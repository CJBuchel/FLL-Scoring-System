use futures::{FutureExt, StreamExt};
use log::{info, error, warn};
use tms_utils::{security::Security, TmsClients, TmsClient, TmsClientResult};
use tokio_stream::wrappers::UnboundedReceiverStream;
use warp::{ws::Message, Reply, ws::WebSocket};
use tokio::sync::mpsc;
use crate::schemas::*;

async fn client_msg(_user_id: String, msg: Message, _clients: TmsClients, security: Security) {
  let message = match msg.to_str() {
    Ok(v) => v,
    Err(_) => return
  };

  let decrypted_message = security.decrypt(message.to_string());

  if message == "ping" || message == "ping\n" {
    return;
  }

  let _socket_message: SocketMessage = serde_json::from_str(decrypted_message.as_str()).unwrap();
  // @todo use socket message for something. (Off chance that the client sends a socket message instead of the server)
}

async fn client_connection(ws: WebSocket, user_id: String, clients: TmsClients, mut client: TmsClient, security: Security) {
  let (client_ws_sender, mut client_ws_rcv) = ws.split();
  let (client_sender, client_recv) = mpsc::unbounded_channel();

  let client_recv = UnboundedReceiverStream::new(client_recv);
  tokio::task::spawn(client_recv.forward(client_ws_sender).map(|result| {
    if let Err(e) = result {
      error!("error sending websocket msg: {}", e);
    }
  }));

  client.ws_sender = Some(client_sender);
  clients.write().unwrap().insert(user_id.clone(), client);

  info!("{} connected", user_id);

  while let Some(result) = client_ws_rcv.next().await {
    let msg = match result {
      Ok(msg) => msg,
      Err(e) => {
        error!("error receiving message for user id: {}: {}", user_id.clone(), e);
        break;
      }
    };
    client_msg(user_id.clone(), msg, clients.to_owned(), security.clone()).await;
  }

  clients.write().unwrap().remove(&user_id);
  warn!("{} disconnected", user_id.to_owned());
}

pub async fn ws_handler(ws: warp::ws::Ws, user_id: String, clients: TmsClients, security: Security) -> TmsClientResult<impl Reply> {
  let client = clients.read().unwrap().get(&user_id).cloned();
  
  match client {
    Some(c) => Ok(ws.on_upgrade(move |socket| client_connection(socket, user_id, clients.to_owned(), c, security))),
    None => Err(warp::reject::not_found()),
  }
}