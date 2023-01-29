# **How to Configure Static IP Address on Ubuntu 20.04**
` `![](Aspose.Words.bb211244-1601-4078-91ad-7dc964c81cf1.001.png)

Usually, when a client system connects to a network via WIFI or an ethernet cable, it automatically picks an IP address from the router. This is made possible through the DHCP server which auto-assigns IP addresses to clients from a pool of addresses. The drawback with DHCP is that once the DHCP lease time has lapsed, the IP address of a system changes to a different one, and this leads to a disconnection in case the system was used for a particular service such as a file server. For this reason, you may want to set a static IP address so that it never changes even when the lease time is up.

In this guide, you will learn how to configure a static IP address on Ubuntu 20.04 server and desktop.

## **Step1:  Network Configuration**


Ubuntu uses the Network Manager daemon for managing network configuration. You can configure a static IP either graphically or on the command line.

For this guide, we will focus on setting a static IP address using both the GUI and on the command line, and here is the IP configuration:

Suppose,

IP Address: 192.168.29.243

Netmask: 255.255.255.0

Default gateway route address: 192.168.29.1

DNS nameserver addresses: 8.8.8.8, 192.168.29.1





This information will be different for you, so replace the values accordingly according to your subnet.

Set Static IP Address on Ubuntu 22.04 Desktop

Set Static IP Address on Ubuntu 22.04 Server

How to Set Static IP Address on Ubuntu Desktop

On the window that appears, click on the ‘Network’ tab at the left sidebar and then hit the gear icon on the network interface that you wish to configure. In my case, I’m configuring my wired interface.

In the new window that appears, your interface’s network settings will be displayed as shown. By default, the IP address is set to use DHCP to automatically pick an IP address from the Router or any other DHCP server.

In our case, the current IP address assigned is 192.168.29.104.



Now select the IPv4 tab to start setting the static IP address. As you can see, the IP addressing is set to Automatic (DHCP) by default.



Click on the ‘Manual’ option and new address fields will be displayed. Fill out your preferred static IP address, netmask, and default gateway.

The DNS is also set to automatic. To manually configure the DNS, click on the toggle to turn off Automatic DNS. Then provide your preferred DNS entries separated by a comma as shown.



Once all is done, click on the ‘Apply’ button at the top right corner of the window. For the changes to apply, restart the network interface by clicking on the toggle to disable it and enable it again.


## **Step2: Enable Network Connection**


Once again, click on the gear icon to reveal the new IP configuration as shown.

Verify Network Configuration

You can also confirm the IP address on the terminal by running the ifconfig or ip addr command.

$ ifconfig



OR

$ ip addr





Check IP Address

To confirm the DNS servers, run the command:

$ systemd-resolve --status





Check DNS Servers

How to Set Static IP Address on Ubuntu Server Using Netplan

We have seen how we can configure a static IP address graphically on Ubuntu 22.04 desktop. The other option is configuring a static IP address on the terminal using Netplan. Developed by Canonical, Netplan is a command-line utility used to configure networking on modern Ubuntu distributions. Netplan makes use of YAML files to configure network interfaces. You can configure an interface to acquire an IP dynamically using DHCP protocol or set a static IP.

If $netplan command is not working then install the net-tools:

sudo apt-get install net-tools -y



Open your terminal and head over to the /etc/netplan directory. You will find a YAML configuration file which you will use to configure the IP address.

In my case the YAML file is 01-network-manager-all.yaml with the default settings as shown.
## **Step3: Netplan YAML File**


For the Ubuntu server, the YAML file is 00-installer-config.yaml and these are the default settings.

Default Network Settings

To configure a static IP, copy and paste the configuration below. Be mindful of the spacing in the YAML file.

network:

`  `version: 2

`  `ethernets:

`     `ens33:

`        `dhcp4: false

`        `addresses: [192.168.29.104/24]

`        `routes:

`        `- to: default

`          `via: 192.168.29.1

`        `nameservers:

`          `addresses: [8.8.8.8, 8.8.4.4]



Next, save the file and run the netplan command below to save the changes.

$ sudo netplan apply



You can thereafter confirm the IP address of your network interface using the ifconfig command.

$ ifconfig 

Check Ubuntu Server IP Address
