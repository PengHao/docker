${CATALINA_HOME}/bin/shutdown.sh

if [ -f "${APP_PATH}" ]; then
    rm -rf "$CATALINA_HOME/webapps/${APP_NAME}"
    ln -s "${APP_PATH}" "$CATALINA_HOME/webapps/${APP_NAME}.war"
fi

${CATALINA_HOME}/bin/startup.sh
nginx -c ${NGINX_CONF}

curl -v http://127.0.0.1/account/
