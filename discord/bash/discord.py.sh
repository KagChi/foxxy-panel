if [[ ! -z ${INSTALL_REPO} ]]; 
then git clone {{INSTALL_REPO}} .; fi; 
if [[ ! -z ${AUTO_UPDATE} ]];
then git pull; fi;
if [[ ! -z ${PY_PACKAGES} ]]; 
then pip install -U ${PY_PACKAGES}; fi;
if [[ ! -z ${REMOVE_PACKAGES} ]];
then pip uninstall -y ${REMOVE_PACKAGES}; fi;
if [[ -f /home/container/requirements.txt ]]; 
then pip install  -r requirements.txt; fi; 
/usr/local/bin/python /home/container/{{BOT_PY_FILE}}