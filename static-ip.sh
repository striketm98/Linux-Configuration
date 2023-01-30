#! /bin/bash
ip_add=
ip_gateway=
cat >> /etc/netplan/00-installer-config.yaml << EOF
network:
  version: 2
  ethernets:
     ens33:
        dhcp4: false
        addresses: [${ip_add}/24]
        routes:
        - to: default
          via: ${ip_gateway}
        nameservers:
          addresses: [8.8.8.8, 8.8.4.4]
  
EOF
netplan apply
ifconfig
