#!/usr/bin/env bash

. h-manifest.conf



mkdir -p $CUSTOM_LOG_BASEDIR
echo -e "Running ${CYAN}a.multiminer${NOCOLOR}" | tee ${CUSTOM_LOG_BASEDIR}/${CUSTOM_NAME}.log

./a.multiminer -a argon2d16000 -b 127.0.0.1:${CUSTOM_API_PORT} $(< $CUSTOM_NAME.conf)$@ 2>&1 | tee ${CUSTOM_LOG_BASEDIR}/${CUSTOM_NAME}.log
