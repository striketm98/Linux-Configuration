# Ubuntu-20.04--LTS-SEVER_Version-Tutorial
all commands and interacting with cli tools of debain base
Book Ref: 
https://buildmedia.readthedocs.org/media/pdf/lym/latest/lym.pdf
apt-get update
This command will update your package lists. Remember, this will not update software. Run Command #2 or #3 followed by this command. Note that apt-get require root permission. You should add sudo before apt-get.
apt-get upgrade
This command will download and update installed software. But it will not install or remove extra packages.
apt-get dist-upgrade
To upgrade all the packages on your system, and, if needed for a package upgrade, installing extra packages or removing packages
apt-get install <package-name>
You may download and install new packages or software named <package-name> using above commands. E.g. run sudo apt-get install gimp in your terminal to install Gimp image manipulation software. Notice the sudo before apt-get.
apt-get -f install
Sometimes while installing a software it fails. This might happen due to failure in downloading software itself or dependency. To fix broken installation run the above command.
apt-get remove <package-name>
If you don’t like a software you can get rid of that by simply running above command. Don’t forget to change <package-name> with real one. This will uninstall the software but not the dependent packages.
apt-get purge <package-name>
To completely remove a software and it’s dependent packages run the apt-get purge command.
apt-get autoclean
This command will remove all Debian (.deb) files that are no longer installed. You may find this files in /var/cache/apt/archives
apt-get clean
This will empty whole cache files. A lot of space could be freed if you frequently install and uninstall softwares.
apt-get automove
It will remove old dependent files and footprints installed by previous applications.
dpkg –configure -a
configure installed package
sudo nano /etc/apt/sources.list
display repository source list in nano editor
sudo apt-get download <package-name>
download but not install package
Ctrl + c
It kills process with a signal SIGINT. Don’t confuse with Ctrl+C in Windows or Ctrl+Z. Ctrl+Z is used to suspend a process while In Windows Ctrl+C is copy command.
Ctrl + Shift + c
This is a copy command.
Ctrl + Shift + v
This is paste command like Ctrl+v in Windows.
nano <filename>
nano is command line text editor. In terminal by running the above command you could edit file named <filename>.
sudo nano <filename>
This is same command as we mentioned earlier except it will edit file with privilege of super user.
gedit <filename>
gedit is GUI text editor like notepad in Windows. It will start editing file named <filename> in gedit window.
sudo gedit <filename>
This is again same as above except it will edit files with SU privilege. It is worth to mention this command because many beginners starts editing a file and later they realize they forget to get proper privilege.
sudo poweroff
This will shut down the system as the name suggest.
sudo halt
Halt is supposed to be same as poweroff by many beginners. But it’s not unless you explicitly mention to poweroff using either -p or–poweroff.So if you want to poweroff your system then use sudo halt –p or sudo halt –poweroff.
sudo reboot
This will simply reboot your system.
Ctrl + Alt + t
Open Ubuntu Terminal Window, the command line interface. This is a preinstalled software comes with every standard Ubuntu.
pwd
print work directory: e.g. if you are at your home directory then it will print something like /home/<username>
ls
list directory: This command will list the items of a directory. If you don’t specify a directory then it will list work directory, the place where you currently are.
cd
change directory. It will change your work directly as you specify. You will have to specify a directory.g. cd /home will change your work directory to /home regardless where you are.
cd ..
change directory one level up.
cd ~
change to home directory. Suppose if your username is tom then cd ~ will change your work directory to /home/tom.
cp
Copy Command. It will copy a file or directory. It is similar to Copy-Paste in GUI.
mv
Move or rename files. It is like renaming a file or cut-paste in GUI.
rm
remove file or directory.
rmdir
remove empty directory. This will not remove content of the directory but it will delete a directory if it is empty.
mkdir
make directory. It will create a new directory. We will need to specify a name.
man
Ubuntu will help you instantly and has a built in manual. Simply apend any command with man or type executes man. e.g. man mkdir
sudo
sudo basically allow a standard user to execute a command with root or superuser privilege.
adduser <username>
As the name suggest it will add another user. You may also use useradd, which is a little bit different from the adduser.
passwd <username>
This command will change password for an user named <username>. Root privilege will be require while change other user’s password.
time
time command in Ubuntu will not actually show you current date or time. It will actually run and show the summary system resources usages.Tip: run time gedit in terminal. You will see a new gedit window. After a few seconds close the window and see what appears in the terminal. It will be something like:real     112s
user     0m0.560s
sys        0m0.050sCheck this wikipedia article.
date
This command will show you the current date and time of your system (including timezone).
cal
This will show calender in the terminal.
wget
You can use wget command to download things from Internet or other connected networks.
ping
You may ping websites and other devices with ping command. This is a part of iputils package. Pinging is something like saying hello to someone and that person reply you back. Which means you are connected and the remote person (or system) is replying you back. Try
ping -c 4 ubuntubeginner.com
When you execute this command your system will say ubuntubeginner.com‘s server ‘hi’ 4 times. -c 4 stands for 4 times.

ftp
ftp (file transfer protocol) is used to transfer files for one system to another system.
ssh
ssh (secure shell) is used to log into remote system or server. By default Ubuntu comes with SSH program preinstalled.
fdisk
fdisk command is used to manipulate (add, remove, delete, change) partition of your system. NOTE: Don’t use this command unless you are sure about the consequences.
df
df is a very handy command which show the storage used/free on your the storage drives connected to your system.
chmod
chmod is very useful command for beginners. It is used to change file permission. chmod stands for change mode in Linux.
chown
chown is used to change owner of a file or directory (or further more). Beware about using chown or chmod commands
sudo su
superuser in Ubuntu Desktop is disabled by default. But if you want to act as a superuser (or root) then use this command. You will be asked for password. sudo su will allow the terminal session to run all commands and activity with superuser privilege.Don’t forget to close the root session by using exit command.
WARNING: Acting as su or root could be dangerous. Beginners should consider using sudo.
clear
Clear Screen: Use clear command to clear the terminal screen.
exit
exit from terminal.
Displaying, Viewing, And Editing Files
How to edit or view the contents of a file in Ubuntu via command line:

nano: Nano is a text editor that is often preinstalled on Linux distributions. You can create a new text file or edit an existing one (whether text or a configuration file). Here is an example of its usage via the Ubuntu shell:

nano newfile.txt
less: The ‘less’ command displays the contents of a file right there in the command prompt window, and you can scroll through it easily by pressing the enter button. An example of this command’s usage:

less filename.txt
echo: The ‘echo’ command can be used to print a value or a string to the screen, and it can also be used to write text to a file. For example, you can use it to write ‘Yay’ to a text file named yay.txt as shown below:

echo "Yay" > yay.txt
Converting a string to hexadecimal: You can convert a string to hexadecimal using the echo command as shown:

echo -n "This string will be converted to hexadecimal format" | od -A n -t x1
Locate a file, which is especially useful if you need to find a config file:

locate filename
Display the contents of a file all at once:

cat filename.txt
View the last row of a file (continuously, which will keep printing the latest line if the file changes):

tail -f filename
Adding Software: Ubuntu Commands For Package Installation
How to install an app/program in Ubuntu via command line:

You might have to type sudo before some of these Ubuntu commands.

You may need to type ‘apt-get‘ instead of ‘apt‘ in older versions of Ubuntu.

apt install: This command installs a package in Ubuntu. An example of this command’s usage is: sudo apt install nano. If you want to install a package, but want to get the exact package name needed for installation (we’ll use Chromium for this example, a browser), you can use apt-cache search as shown below.

apt-cache search chromium
That should return a list of Ubuntu packages matching those search terms (along with their descriptions, if you’re exploring and want to find new apps), and you’ll most likely see ‘chromium-browser’ in the results. That means you can install Chromium by typing:

apt install chromium-browser
apt install firefox
Install a package from a .deb file via command line:

dpkg -i packagename.deb
Removing Packages/Uninstalling Software In Ubuntu
How to uninstall an Ubuntu package via command line:

The apt remove command uninstalls packages in Ubuntu. For example, you could use it like this:

apt remove chromium-browser.
Bear in mind that ‘apt remove’ won’t always remove associated packages (dependencies, in this case) that may have been installed.

Another useful Ubuntu command is ‘apt autoremove’. The autoremove command cleans up Ubuntu packages left behind during the (sometimes) incomplete uninstall process mentioned above. Example Usage:

apt autoremove
If you need to remove an app more thoroughly, including its configuration files and settings you can use the purge option:

apt remove --purge appname
Ubuntu Authentication/User Account Commands
login: The login command can be used to log into a user account via the command line on Ubuntu. Example Usage:

login
logout: The logout command logs you out of a user account via the command line/terminal. This is useful for ssh sessions if you want to get off a VPS that you’re logged into. Example Usage:

logout
sudo: The sudo command lets a non-root account perform administrative tasks on Ubuntu (depending on whether they are in the sudoers file and the permissions set in the configuration) by typing sudo before commands they execute, and they normally have to enter a password to proceed.

This is useful if you want to let someone use your computer, while limiting their permissions. Example Usage:

sudo apt install package-name
su: The su command lets you quickly switch to the root account in an Ubuntu terminal window. Example Usage: type ‘su’ followed by the root password when it prompts you for it.

It is inadvisable to stay logged in as the root user on Linux.

passwd: The passwd command changes a user password. Example Usage: Type ‘passwd’ and follow the provided instructions/enter your new password.

Generate a random password using OpenSSL:

openssl rand -base64 16
This can also be done with the GPG tool:

gpg --gen-random --armor 1 14
Clear Scrollback/Erase Terminal Contents In Linux
If you’ve typed a password or something confidential in the terminal and need to clear your scrollback or erase your terminal history, use the following command:

history -c
ssh: You can use this command to connect to your remote server or other machine (for example: a server on a VPS web hosting account) for shell access without having to use your browser. Example Usage:

ssh username@domain.com
OR

ssh username@ipaddress
Shut down your SSH server:

service ssh stop
OR to start your SSH server:

service ssh start
chmod: The ‘chmod’ command changes permissions. You can use it to set read, write, and access permissions on a file, for example. Example Usage: chmod 754 filename.txt.

chown: The ‘chown’ command changes ownership of a file or directory. Example Usage:

chown newowner plop.txt
chroot: This enables you to change the current root directory for the terminal window you’re in. Usage.

users: The ‘users’ command in Ubuntu will list the users that are currently logged in. Example Usage:

users
adduser: The ‘adduser’ command in Ubuntu creates a new user.

Example Usage:

adduser newusername
userdel: The ‘userdel’ command allows you to delete a user in Ubuntu. Example Usage:

userdel username
visudo: This Ubuntu command enables you to edit the sudoers file, which you may need if creating a new user and need to give them sudo or other administrative privileges. Example Usage:

visudo
groups: The ‘groups’ command lists user groups. It can also list the groups that a particular user is in. Example Usage: groups username.

Download Files Via The Command Line On Linux
‘wget‘ is one of those useful Ubuntu commands (although not exclusive to Ubuntu) you can use to download files via the command line. It saves URLs to a file, for example performing wget on an HTML page will download it and save it to a file. This works on not only Ubuntu, but the rest of the Linux distributions as well.

Example Usage:

wget http://domain.com/filename.txt
curl: curl is not installed on all machines, but it is found on many. You can use it download and print the contents of a file to the screen, or for other purposes as well. Example Usage:

curl http://domain.com/filename.txt
Accessing/Manipulating Drives And Directories In Linux
If you haven’t booted into a desktop environment and don’t see your partition, second hard drive, or external USB drive in Ubuntu (or any Linux distribution) you may need to mount the drive using the mount command.

‘*’ refers to the number of the device. If you find the device and it is /dev/sda6, then you would simply replace the ‘*’ with ‘6’. Example Usage: mount /dev/sda* /mnt/directory_you_created

An example Ubuntu command to unmount a drive:

umount /mnt/directory_you_created
Ubuntu command to enter a directory or mounted drive:

You can use the ‘cd’ command to enter a directory by typing ‘cd directory_name‘.

List directory contents:

You can list the contents of the directory you entered by typing one of the ‘ls‘ Ubuntu commands. You can type ‘ls -a‘ to list the files and folders with their respective permissions.

Create a directory in Ubuntu:

mkdir directoryname
Remove a directory in Ubuntu:

You can remove a directory using the ‘rmdir’ command if it is empty. In order to remove a directory that contains files, you can use the ‘rm’ command with the parameter ‘rf’ like this: ‘rm -rf plop‘. ‘plop’ is the directory name in this case.

Remove a file in Ubuntu:

rm filename
List drives in Ubuntu and their mount points:

lsblk
List filesystems and how much space is on them in Ubuntu:

df
Scan your drive for errors in Ubuntu:

fsck
Copying Files And Moving Them In Ubuntu Linux
You can use the ‘cp’ command to copy files or directories in Ubuntu or any other Linux distribution. Example Usage:

cp -R home/username/filename.txt /directory/subdirectory/filename.txt
The ‘-R’ option means recursive and copies files inside the directory. Learn more about cp and its options.

Print working directory/display the full path of the directory that you are currently in:

pwd
Create A RAM Disk In Ubuntu To Run Your Programs From RAM (Or Load Files From RAM)
You can create a partition in RAM (use a portion of your memory as a drive) to store frequently-accessed files or programs. This will enable them to load much faster (as RAM is much faster than a hard drive).

Bear in mind that this has to be recreated every time your computer is restarted, so you may want to make these commands run on startup. You also need root priviledges to run the following commands (or the ‘sudo’ command).

mkdir -p /media/ramdisk  mount -t tmpfs -o size=1024M tmpfs /media/ramdisk
Ubuntu/Linux Networking Commands
ifconfig: This can be used to provide information about running network interfaces, including their IP addresses. This can be used to derive your computer’s IP address on your local network. Use ‘ip’ if not available.

ip (for newer versions such as Ubuntu 20.04)): In never versions of Ubuntu you may use the ip command if ifconfig is no longer available. Use ‘ip address’ to view your network interfaces in Ubuntu and their IP addresses.

If it returns ‘eth0’, then you’re probably using an Ethernet connection, hence the ‘eth’, and ‘wlan0’ refers to Wi-Fi (wireless LAN). It may also be both if you have both a wired and a wireless network interface card (NIC).

ping: The ping command lets you ‘ping’ another machine such as a server to see if it responds. You can also use ping to determine if you have a working Internet connection. If you receive a response such as this:

PING google.com (IP Address) 56(84) bytes of data. 64 bytes from lga25s61-in-f14.1e100.net (IP Address): icmp_seq=1 ttl=57 time=2.17 ms
from a website using this command, your Internet connection is working: ping google.com

ifup: Start a network interface. Example Usage:

ifup eth0
ifdown: Stop a network interface. Example Usage:

ifdown eth0
whois: The whois command can provide domain info by simply typing whois domain.com.

For example:

whois microsoft.com
netstat: The ‘netstat’ command displays the Internet connections among other network statistics for your Ubuntu machine. Example Usage:

netstat
traceroute: The ‘traceroute’ command attempts to trace the route that a packet has to travel to get to the specified host.

Minimum required parameters: traceroute domain.com

Managing Processes, Closing Programs, And System Resources
crontab: The ‘crontab’ Ubuntu command is used to make programs run on startup in Ubuntu. Example Usage

top: The ‘top’ command displays running processes and their system resource usage such as RAM and CPU usage. Just type ‘top’ to run it and Ctrl + C to exit.

vmstat: This Ubuntu command displays virtual memory statistics. Just type ‘vmstat’ to launch it.

pkill: This shuts down processes by sending them the SIGTERM signal. Please be careful when using any kill commands. Learn about its usage thoroughly before trying it.

pgrep: pgrep will list the IDs of processes with the name you provided. For example, if you want to see all the running mysqld processes, typing ‘pregrep mysqld’ will list the IDs of the running mysqld processes.

w: The ‘w’ command lists users’ processes beside their usernames, their average system loads. Example Usage:

w
Shutting Down, Rebooting, and Power Management
shutdown: This Ubuntu command can shut down or reboot your machine. Example Usage:

shutdown -h now
or:

shutdown -r now
The ‘-h’ option powers off your Ubuntu machine, and the ‘-r’ option reboots it.

reboot: This reboots the computer. Example Usage:

reboot
Get the path of a command/get the path of a program in Linux

You can get the path of a command or find out where a program’s binaries are installed by using the ‘dpkg-query’ command:

dpkg-query -L programname
You may see many paths. For the binaries, look for the ‘usr/bin’ paths.

Miscellaneous
Get BIOS info via command line in Linux (this works for other distributions as well):

dmidecode
You may need to install dmidecode first.

Check CPU Temperature In Ubuntu

You can check the temperature of your CPU, GPU and drives using the sensors command. You may have to install lm-sensors if it isn’t already installed.

sudo apt install lm-sensors
You can also use the “wmtemp” command (must be installed as well).

Display the date at the command line in Ubuntu:

date
Check your Ubuntu server’s uptime:

uptime
Load the manual for a program:

man programname
Clear the screen:

tput clear (ctrl+l)
