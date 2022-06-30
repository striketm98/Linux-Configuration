## Linux Basic Commands:
| Description                                                                                        | Command                 |
| -------------------------------------------------------------------------------------------------- | ----------------------- |
| Display system date and time                                                                       | date                    |
| Display calendar                                                                                   | cal                     |
| Display date                                                                                       |  time and calendar      |
| Display August month 2016 year calendar                                                            | cal 8 2016              |
| Used to clear the terminal window                                                                  | clear                   |
| Exit from the terminal window                                                                      | exit                    |
| Display free and used system memory                                                                | free                    |
| Display free and used system memory in bytes                                                       | free -b                 |
| Display free and used system memory in kilobytes                                                   | free -k                 |
| Display free and used system memory in megabytes                                                   | free -m                 |
| Change user password                                                                               | passwd                  |
| Power-off the machine                                                                              | shutdown                |
| Power-off the machine immediately                                                                  | shutdown -h now         |
| Power-off the machine after 10 minutes                                                             | shutdown -h +10         |
| Print current working directory                                                                    | echo $PWD               |
| Print previous working directory                                                                   | echo $OLDPWD            |
| Executes the 11th command in command history                                                       | !11                     |
| Reveals your command history                                                                       | history                 |
| Power off or reboot the Operating system                                                           | sudo reboot             |
| Display the IP address of the host                                                                 | ip - a                  |
| List the size of files and directories                                                             | ls -s                   |
| View mounted file systems                                                                          | mount                   |
| Display the information of disk usage of files and directories                                     | du                      |
| Tells you how long the system has been running                                                     | uptime                  |
| Set current date as 02 Nov 1988                                                                    | date -- set 1998-11-02  |
| Set current time as 12:11:02 IST                                                                   | date -- set 12:11:02    |
| View and change the configuration of the network interfaces on the system                          | ifconfig                |
| Lists all files and directories in the present working directory                                   | ls                      |
| Report the process information                                                                     | ps                      |
| Display disk usage                                                                                 | df                      |
| Display disk usage in gigabytes megabytes , or kilobytes                                           | df -H                   |
| Delete every file and every directory                                                              | rm -r \*                |
| Provides a quick overview of the currently running processes                                       | top                     |
| The system performs an immediate reboot                                                            | reboot                  |
| Terminate processes without having to log out or reboot                                            | kill                    |
| Change the current working directory                                                               | cd                      |
| Create a new session on the system                                                                 | login                   |
| List open files                                                                                    | lsof                    |
| List USB devices                                                                                   | lsusb                   |
| Check the status of the network services                                                           | service network status  |
| Start the network service                                                                          | service network start   |
| Stop the network service                                                                           | service network stop    |
| Restart the network service                                                                        | service network restart |
| Report information about the users currently on the machine and their processes                    | w                       |
| Display the current directory                                                                      | pwd                     |
| Displays CPU architecture information (seuch as number of CPUs , threads, cores,sockets, and more) | lscpu                   |
| Displays the number of processing units available to the current process                           | nproc                   |
| The system performs an immediate reboot                                                            | init 6                  |
| Power-off the machine                                                                              | init 0                  |
| List files by date                                                                                 | ls -lrt                 |
| Report information about storage devices such as hard disks flash drives etc                       | lsblk                   |
| Show exit status of previous command                                                               | echo $?                 |
| Lists a few useful info commands                                                                   | info                    |
| Prints current year's calendar                                                                     | cal -y                  |
| Check the status of all the services                                                               | service --status-all    |
| Display time in hh:mm:ss                                                                           | date +%T                |
| Tells when the user last logged on and off and from where                                          | last -1 username        |
| Sort files and directories by extension name                                                       | ls -X                   |
| Display the manual for the pwd command                                                             | man pwd                 |
| Displays information about running processes in the form of a tree                                 | pstree                  |
| Resets your terminal                                                                               | reset                   |
| Displays What date is it this Friday                                                               | date -d fri             |
| Displays the size of each individual file                                                          | du -a                   |
| Display information about the Advanced configuration and power Interface                           | acpi                    |
| Takes you two folders back                                                                         | cd /                    |
| Takes you to the previous directory                                                                | cd -                    |
| Displays a list of shell built-in commands                                                         | help                    |
| Lists your last logins                                                                             | last yourusername       |
| Create a new directory called myfiles                                                              | mkdir myfiles           |
| Remove the directory myfiles                                                                       | rmdir myfiles           |
| Disable password for a specific user "root1"                                                       | passwd -d root1         |
| Switch to user "root1"                                                                             | sudo su root1           |
