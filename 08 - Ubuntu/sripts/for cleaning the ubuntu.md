
```bash
sudo apt get update
sudo apt-get upgrade -y
sudo apt-get clean
# go and check the cd /var/cache/apt/archives | ls -ltrh --> after clean command
sudo apt-get autoclean
```
## To verify which kernal we are using

```bash
uname -a

uname -mrs
```
```c
nalla@nallaperumal-aspire:~$ uname -a
Linux nallaperumal-aspire 6.5.0-35-generic #35~22.04.1-Ubuntu SMP PREEMPT_DYNAMIC Tue May  7 09:00:52 UTC 2 x86_64 x86_64 x86_64 GNU/Linux

nalla@nallaperumal-aspire:~$ uname -r
6.5.0-35-generic

nalla@nallaperumal-aspire:~$ uname -mrs
Linux 6.5.0-35-generic x86_64

```
### To list down the all kernal images in our ubuntu system:

```bash
dpkg --list | egrep -i 'linux-image*|linux-header*'
uname -r
uname -mrs
dpkg --list | egrep -i 'linux-image*|linux-header*'
apt-mark showauto 'linux-image*'
apt-mark showmanual 'linux-image*'
sudo apt-get autoremove --purge
cat /proc/cmdline //--> shows which kernal image ubuntu using
dpkg --list | egrep -i 'linux-image*|linux-header*'

//To clean the apt directory.
sudo apt autoremove
sudo du -sh /var/cache/apt/
sudo apt clean

```


### CLEAR THE JOURNALCTL FILES:
```c
#cat /dev/null > /var/log/syslog

ls -ltrh /var/log/
du -sh /var/log/journal/

#journalctl
sudo du -sh /var/log/journal/
journalctl --disk-usage

#journalctl --vacuum-time=2d
journalctl --vacuum-size=100M
sudo du -sh /var/log/journal/
journalctl --vacuum-size=25M
sudo du -sh /var/log/journal/
sudo du -sh /var/log/jou*
```

### clear the syslog file; but not deleting the syslog file
```c
cat /dev/null > /var/log/syslog
ls -ltrh /var/log/
systemctl restart syslog
service syslog restart
```
