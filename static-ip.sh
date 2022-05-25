#! /bin/bash
cat >> /etc/netplan/00-installer-config.yaml << EOF
network:
  version: 2
  ethernets:
     enp0s3:
        dhcp4: false
        addresses: [192.168.2.100/24]
        gateway4: 192.168.2.1
        nameservers:
          addresses: [8.8.8.8, 8.8.4.4]
  
EOF
netplan apply
ifconfig
