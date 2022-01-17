#!/usr/bin/env bash

. h-manifest.conf



mkdir -p $CUSTOM_LOG_FOLDER
echo -e "Running ${CYAN}a.multiminer${NOCOLOR}" | tee ${CUSTOM_LOG_FOLDER}/${CUSTOM_NAME}.log

./ariominer -a argon2d16000 $(< $CUSTOM_NAME.conf)$@ 2>&1 | tee ${CUSTOM_LOG_FOLDER}/${CUSTOM_NAME}.log
