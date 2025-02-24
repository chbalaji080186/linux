# linux
Linux commands
cat /proc/cpuinfo
$free
$ cat /proc/meminfo
lscpu - system info - whether 32 or 64 bit
sudo -s -u cdis

environment variables
/etc/profile.d/cdis.sh

check the all the service status
service --status-all

start the sumo collector service

cd /opt/SumoCollector
sudo ./collector start

To check the Java virtual memeory

java -XX:+PrintFlagsFinal -version | grep -iE 'HeapSize|PermSize|ThreadStackSize'

to see the file system space 
$ df -h

To check current folder space
du -sh
all the folder size in the directory 

du --max-depth=1 /home/ | sort -n -r

check the size of the folder
du -sh /var

TOMCAT SERVICE SYSTEMD

/etc/systemd/system/tomcat.service

ExecStartPre=/bin/bash -c 'ulimit -a > /tmp/ulimit.log'

FILE BETWEEN DATES
find . -type f -newermt 2017-01-07 ! -newermt 2018-01-08

find . -maxdepth 1 -name '*.pdf' -delete

 find . -iname "*2020*" -mtime +90 -print -delete  --- delete all the files more than 90 days which consiste "2020" in the file

find . -name ".svn" -type d -empty -delete - delete all the empty folders


find .  -mtime +1 -print -delete

semanage port -l 
semage port -a -t http_port_t -p tcp 9443 - to create the opn


FIREWALL
TCPWRAPPER
PAM
MAC selinux
DAC ( chown,chmod etc)


facter -- to gather info of system

ls dev/home 2&> /dev/null --ignore the error
dev/home 2&> catalina.out --- dlete the content of the file

vimrc
---------
set nu
set ai
set tapstop=2
set expandtab
..............
-------------

Block -  multiple modules .... u can put condition for multiple modules
chmod 0755 filename 

firts values 4


 easy_install-3.7 pip
 python3.7 -m pip install -U pip setuptools
 pip3.7 uninstall boto3
-------------
linux version

cat /etc/*release
-------

visudo
Add user to the sudo list
%admin  ALL=(ALL) NOPASSWD:ALL

find . -mtime +90 -type f -print -delete --- delete all the files older than 90 days
--------

say you have a directory called /home/jerry/prog and you would like to compress this directory then you can type tar command as follows:
tar -zcvf prog-1-jan-2005.tar.gz /home/jerry/prog

-z : Compress archive using gzip program in Linux or Unix
-c : Create archive on Linux
-v : Verbose i.e display progress while creating archive
-f : Archive File name
------------------
cat /dev/null > catalina.out - delete all the content 



# SED commands

https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/
1.Replacing or substituting string : Sed command is mostly used to replace the text in a file. The below simple sed command replaces the word “unix” with “linux” in the file.
$sed 's/unix/linux/' geekfile.txt

2Replacing the nth occurrence of a pattern in a line : Use the /1, /2 etc flags to replace the first, second occurrence of a pattern in a line. The below command replaces the second occurrence of the word “unix” with “linux” in a line.
$sed 's/unix/linux/2' geekfile.txt

3Replacing all the occurrence of the pattern in a line : The substitute flag /g (global replacement) specifies the sed command to replace all the occurrences of the string in the line.
$sed 's/unix/linux/g' geekfile.txt

4.Replacing from nth occurrence to all occurrences in a line : Use the combination of /1, /2 etc and /g to replace all the patterns from the nth occurrence of a pattern in a line. The following sed command replaces the third, fourth, fifth… “unix” word with “linux” word in a line.
$sed 's/unix/linux/3g' geekfile.txt

5Replacing string on a specific line number : You can restrict the sed command to replace the string on a specific line number. An example is
$sed '3 s/unix/linux/' geekfile.txt

6.Replacing string on a range of lines : You can specify a range of line numbers to the sed command for replacing a string.
$sed '1,3 s/unix/linux/' geekfile.txt

7To Delete pattern matching line
$ sed '/abc/d' filename.txt

 To Delete from nth to last line

Syntax:
$ sed 'nth,$d' filename.txt
Example:
$ sed '12,$d' filename.txt

Last 40 folders big folders
sudo du -x / | sort -n | tail -40 | sort -h -r


Swap is a space on a disk that is used when the amount of physical RAM memory is full.
df -TH
blkid
free -h
swapon -s


##  Clear the content of file without deleting the file
        cat /dev/null > file.log
