#! /bin/bash

# Assign Static IP Address on Ubuntu 20.04 LTS
#Open cloud-init file “/etc/cloud/cloud.cfg.d/subiquity-disable-cloudinit-networking.cfg” and make sure entry “network: {config: disabled}” is there. In case this entry is missing, then add it manually
# How to Set Static IP Address on Ubuntu Server Using Netplan
We have seen how we can configure a static IP address graphically on Ubuntu 20.04 desktop. The other option is configuring a static IP address on the terminal using Netplan.

Developed by Canonical, Netplan is a command-line utility used to configure networking on modern Ubuntu distributions. Netplan makes use of YAML files to configure network interfaces. You can configure an interface to acquire an IP dynamically using DHCP protocol or set a static IP.

Open your terminal and head over to the /etc/netplan directory. You will find a YAML configuration file which you will use to configure the IP address.

In my case the YAML file is 01-network-manager-all.yaml with the default settings as shown.

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
