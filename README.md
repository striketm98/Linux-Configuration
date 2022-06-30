<img width="255" alt="image" src="https://user-images.githubusercontent.com/65080702/176673834-a59df0e7-e265-4e26-ab84-72286eac0420.png"><img width="255" alt="image" src="https://user-images.githubusercontent.com/65080702/176674008-a14b262f-3a77-485e-bf5d-2336eb0715fa.png"><img width="255" alt="image" src="https://user-images.githubusercontent.com/65080702/176674262-cb02ec7e-693c-4ace-be6c-a2469222823e.png">

<img width="290" alt="image" src="https://user-images.githubusercontent.com/65080702/176675009-aadaea92-71fb-4b11-8ed8-6949b3e3e3b8.png">



# Ubuntu-20.04--LTS-SEVER_Version-Tutorial
It is a free open source Unix O.S. for pc that was originally developed in 1991 by Linus

Torvalds, a finish undergraduate student. Linux is neither pure SYSV or pure BSD. To

maximise code portability, it typically supports SYSV, BSD and POSIX System calls (e.g.

Poll, Select, memset, memcpy).

As Linux has become more popular, several different development streams or

distributed have emerged. E.g. Redhat, Slackware, Mandrake, Debian & Caldera,

Mandriva, Ubuntu.

Redhat is the most popular distribution because it has been ported to a large no. of

hardware platforms (including Intel, Alpha & Sparc).

ARCHITECTURE OF THE LINUX O.S.

Linux has all of the components of a typical O.S.:

1\. Kernel: -- The Linux Kernel includes device drivers support for a large no. of PC

hardware device (graphics cards, network card, hard disks, etc), advanced processor

and memory management features and support for many different types of file

systems.

The kernel (in raw binary form that loaded directly into the memory at system start up

time) is typically found in the file /boot/vmlinuz, while the source files can usually be

found in usr/src/linux.

2\. Shell and GUI: -- Linux supports two forms of command input: through textual

command line shell similar to those found on most Unix Systems. (e.g. sh -- The

Bourne Shell, bash -- The Bourne Against Shell and csh The C Shell) and through

graphical interfaces (GUIs) such as the KDE and GNOME window managers.

3\. System Utilities: -- Virtually every system utility that you would expect to find on

standard implementations of Unix (including every system utility described in the

POSIX specification) has been ported to Linux. This includes commands such as ls,

cp, grep, awk, sed, bc, wc, more and so on.

4\. Application Program: -- Linux distributions typically come with several useful

applications programs as standard e.g. include the emac editor, XV (an image

viewer), gcc (a C Compiler), g++ (a c++ compiler), xfig (a drawing package), latex (a

powerful type setting language) and Soffice (Star office, which is an MS-Office style

clone that can read and write word, excel



# Assign Static IP Address on Ubuntu 20.04 LTS

#Open cloud-init file “/etc/cloud/cloud.cfg.d/subiquity-disable-cloudinit-networking.cfg” and make sure entry “network: {config: disabled}” is there. In case this entry is missing, then add it manually


# How to Set Static IP Address on Ubuntu Server Using Netplan

check the current dynamic ip using command below:

`ip -a` 

otherwise,

`sudo apt-get install net-tool -y`

`ifconfig`

We have seen how we can configure a static IP address graphically on Ubuntu 20.04 desktop. The other option is configuring a static IP address on the terminal using Netplan.

Developed by Canonical, Netplan is a command-line utility used to configure networking on modern Ubuntu distributions. Netplan makes use of YAML files to configure network interfaces. You can configure an interface to acquire an IP dynamically using DHCP protocol or set a static IP.

Open your terminal and head over to the /etc/netplan directory. You will find a YAML configuration file which you will use to configure the IP address.

In my case the YAML file is 01-network-manager-all.yaml with the default settings as shown.
```
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
```
Proceed by:

`netplan apply`

check current ip

`ifconfig`

ping with google public ip using command:

`ping 8.8.8.8`
