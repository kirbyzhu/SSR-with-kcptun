#!/bin/bash

echo $KCP_CONFIG
if [ -n "$KCP_CONFIG" ]; then
    echo -e "\033[32mStarting kcptun......\033[0m"
    kcptun $KCP_CONFIG 2>&1 &
else
    echo -e "\033[33mKcptun not started......\033[0m"
fi

echo $SS_MODULE
echo $SS_CONFIG

echo -e "\033[32mStarting shadowsocks......\033[0m"
if [ -n "$SS_CONFIG" ]; then
    $SS_MODULE $SS_CONFIG
else
    echo -e "\033[31mError: SS_CONFIG is blank!\033[0m"
    exit 1
fi
