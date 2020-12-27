if [[ -d .git ]] && [[ {{AUTO_UPDATE}} == "1" ]]; 
then git pull; fi; 
if [[ ! -z ${NODE_PACKAGES} ]]; then /usr/local/bin/npm install {{NODE_PACKAGES}}; fi; 
if [[ ! -z ${UNINSTALL_PACKAGES} ]]; then
/usr/local/bin/npm uninstall ${UNINSTALL_PACKAGES}; fi;
if [ -f /home/container/package.json ]; 
then  /usr/local/bin/npm install --production; fi;
if [ -f ${RUN_BUILD} ];
then /usr/local/bin/npm run build --if-present; 
fi; /usr/local/bin/node /home/container/{{BOT_JS_FILE}}