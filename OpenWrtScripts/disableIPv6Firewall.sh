#!/usr/bin/env sh

ip6tables -F
ip6tables -X
ip6tables -P INPUT ACCEPT
ip6tables -P OUTPUT ACCEPT
ip6tables -P FORWARD ACCEPT
