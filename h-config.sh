#!/usr/bin/env bash

. $MINER_DIR/$CUSTOM_MINER/h-manifest.conf

[[ -z $CUSTOM_TEMPLATE ]] && echo -e "${YELLOW}CUSTOM_TEMPLATE is empty${NOCOLOR}" && return 1
[[ -z $CUSTOM_URL ]] && echo -e "${YELLOW}CUSTOM_URL is empty${NOCOLOR}" && return 1

conf="-o ${CUSTOM_URL} -u ${CUSTOM_TEMPLATE} -p ${CUSTOM_PASS} ${CUSTOM_USER_CONFIG}"
#${WAL}.${WORKER_NAME}
#replace tpl values in whole file

[[ ! -z $WORKER_NAME ]] && conf=$(sed "s/%WORKER_NAME%/$WORKER_NAME/g" <<< "$conf")

echo "$conf" > $MINER_DIR/$CUSTOM_MINER/$CUSTOM_NAME.conf
