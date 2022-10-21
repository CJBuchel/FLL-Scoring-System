import MHubClient_node from "mhub/dist/src/nodeclient";
import MHubClient_browser from "mhub/dist/src/browserclient";

var client:any;

if (typeof window !== 'undefined') {
  client = new MHubClient_browser(`ws://${window.location.hostname}:2122`);
} else {
  client = new MHubClient_node("ws://localhost:2122");
}

const RETRY_TIMEOUT = 1000; // 1 second

var listeners:any[] = [];

let connectPromise = null;

// Connection promise
function connect() {
  if (!connectPromise) {
    connectPromise = Promise.resolve(client.connect())
    .then(() => {
      console.log("Connected to Comm Service");
    }).catch(err => {
      console.error(`Error while connecting to Comm service ${err.message}`);
      throw err;
    });
  }

  return connectPromise;
}

function attemptReconnection() {
  connectPromise = null;
  console.warn("Disconnected from Comm Service");
  setTimeout(() => {
    console.log("Retrying connection...");
    connectPromise = null;
    connect().catch(() => {
      attemptReconnection();
    });
  }, RETRY_TIMEOUT);
}

client.on('close', () => {
  attemptReconnection();
});

client.on('message', message => {
  const topic = message.topic;
  listeners[topic].forEach(listener => listener(message.data));
});

function removeListener(type, event, listener) {
  const topic = `${type}:${event}`;
  const index = listeners[topic].indexOf(listener);
  listeners[topic].splice(index, 1);
}

export function onEvent(type, event, listener) {
  const topic = `${type}:${event}`;
  console.log('Topic Message: ' + topic);
  listeners[topic] = listeners[topic] || [];

  return connect()
  .then(() => client.subscribe('cjms_node', topic))
  .then(() => { listeners[topic].push(listener) })
  .then(() => removeListener.bind(null, event, listener));
}