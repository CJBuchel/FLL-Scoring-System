# 
# Random password generated for application to use
# 
VERSION="2022.0.0";
CJMS_VERSION="TAG=$VERSION";
REACT_APP_CJMS_VERSION="REACT_APP_CJMS_VERSION=$VERSION"

PASSWORD="REACT_APP_PASSWORD_KEY=\"";
PASSWORD+="$(echo $RANDOM | md5sum | head -c 20)";

echo $PASSWORD"\"" > .env;
echo $REACT_APP_CJMS_VERSION >> .env;
echo $CJMS_VERSION >> .env;