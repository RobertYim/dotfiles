#!/bin/bash

PROXY_ADDRESS="127.0.0.1"
PORT="9000"

if (networksetup -getsecurewebproxy Wi-Fi) | grep -q "No"; then
  networksetup -setproxybypassdomains Wi-Fi 192.168.0.0/16 10.0.0.0/8 172.16.0.0/12 127.0.0.1 localhost *.local timestamp.apple.com sequoia.apple.com seed-sequoia.siri.apple.com

  networksetup -setsocksfirewallproxy Wi-Fi $PROXY_ADDRESS $PORT
  networksetup -setsocksfirewallproxystate Wi-Fi on

  networksetup -setwebproxy Wi-Fi $PROXY_ADDRESS $PORT
  networksetup -setwebproxystate Wi-Fi on

  networksetup -setsecurewebproxy Wi-Fi $PROXY_ADDRESS $PORT
  networksetup -setsecurewebproxystate Wi-Fi on
else
  networksetup -setsocksfirewallproxystate Wi-Fi off
  networksetup -setwebproxystate Wi-Fi off
  networksetup -setsecurewebproxystate Wi-Fi off
fi
