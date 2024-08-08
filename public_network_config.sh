#!/bin/bash
sudo ifconfig br-ex promisc
sudo ip link set br-ex promisc on
sudo ip link set enp46s0 promisc on
ifconfig br-ex 172.16.0.2 netmask 255.255.255.0 broadcast 172.16.0.255
