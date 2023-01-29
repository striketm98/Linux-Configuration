#! /bin/bash
cat >> /etc/netplan/00-installer-config.yaml << EOF
network:
  version: 2
  ethernets:
     ens33:
        dhcp4: false
        addresses: [192.168.29.243/24]
        routes:
        - to: default
          via: 192.168.29.1
        nameservers:
          addresses: [8.8.8.8, 8.8.4.4]
  
EOF
netplan apply
ifconfig
