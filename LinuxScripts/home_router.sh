#!/usr/bin/env bash

# WARNING:
# THE SCRIPT NAME MUST NOT CONTAIN ".sh" EXTENSION !!!

# Script location:
# /etc/network/if-up.d/

# set home router ARP
/usr/sbin/arp -f /etc/ethers

