#!/bin/bash

echo $KCP_CONFIG
if [ -n "$KCP_CONFIG" ]; then
    echo -e "\033[32mStarting kcptun......\033[0m"
    kcptun $KCP_CONFIG 2>&1 &
else
    echo -e "\033[33mKcptun not started......\033[0m"
fi

/usr/bin/python /ssr/shadowsocks/server.py "$@"
