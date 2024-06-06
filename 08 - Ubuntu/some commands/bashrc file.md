---
tags:
  - linux
  - neuronscripts
  - bashrc
  - ubuntu
---


```bash
nalla@nallaperumal-aspire:~$ cat .bashrc 
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi




##########  BIG DATA CONFIGURATIONS #####


#jdk-8 :
#export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
#export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export JAVA_HOME=/home/nalla/apps/jdk1.8.0_411
export JRE_HOME=/home/nalla/apps/jdk1.8.0_411/jre
#export JAVA_HOME=/home/nalla/apps/jdk-8u371-linux-x64/jdk1.8.0_371
export PATH=$JAVA_HOME/bin:$PATH


#HADOOP 3.3.6
#HADOOP 2.9.1
export HADOOP_HOME=/home/nalla/apps/hadoop-2.9.1
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=$HADOOP_HOME/lib/native"


#HADOOP 2.9.1
#export HADOOP_HOME=/home/nalla/apps/hadoop-2.9.1
#export HADOOP_COMMON_HOME=$HADOOP_HOME
#export HADOOP_MAPRED_HOME=$HADOOP_HOME
#export YARN_HOME=$HADOOP_HOME
#export HADOOP_HDFS_HOME=$HADOOP_HOME
#export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
#export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
#export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=$HADOOP_HOME/lib/native"

#hive:
export HIVE_HOME=/home/nalla/apps/apache-hive-3.1.2-bin

#pyspark:
export SPARK_HOME=/home/nalla/apps/spark-3.2.4-bin-hadoop2.7
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'


#HBase:
export HBASE_HOME=/home/nalla/apps/hbase-1.2.6
export PATH=$HBASE_HOME/bin:$PATH

#sqoop:
export SQOOP_HOME=/home/nalla/apps/sqoop-1.4.7.bin__hadoop-2.6.0
export PATH=$SQOOP_HOME/bin:$PATH

#zookeeper :
export ZOOKEEPER=/home/nalla/apps/apache-zookeeper-3.8.1-bin
export PATH=/home/nalla/apps/apache-zookeeper-3.8.1-bin/bin:$PATH



#All Path :
export PATH=$PATH:~/.local/bin
export PATH=$JAVA_HOME/bin:$SPARK_HOME/bin:$HIVE_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$HADOOP_COMMON_HOME/bin:$PATH

#echo ""
#echo "Hi Nalla Perumal.. Have a Good day!"
#echo -e "\e[38;5;82mHi Nalla Perumal \e[38;5;198Have a Good Day!"
echo ""
banner1="\e[104m"
reset="\e[0m"
colorcayan="\e[96m"
bold="\e[1m"
italic="\e[3m"
blink="\e[5m"
grey_banner="\e[100m"
bold_underline="\e[1;4m"

echo -e "\e[40;38;5;82mNALLA PERUMAL \e[30;48;5;82m DATA ENGINEER \e[0m"
#echo -e "${bold}${grey_banner}NALLA PERUMAL${reset}"
#echo -e "${bold}${bold_underline}DATA ENGINEER${reset}"
echo ""
echo -e "${banner1}Think Beyond!!! Dream Big !${reset}"
echo ""
#echo "DO MORE..."
#echo -e "\e[5mDO MORE..\e[0m" 
#echo -e "\e[96mDO MORE!!"      # This is for color(LIGHT CAYAN)
echo -e "\e[3m\e[1m\e[5m\e[96mDO MORE..\e[0m\e[0m"
#echo `date`

# Added by findspark
export SPARK_HOME=/home/nalla/apps/spark-3.2.4-bin-hadoop2.7
export PYTHONPATH=/home/nalla/apps/spark-3.2.4-bin-hadoop2.7/python:/home/nalla/apps/spark-3.2.4-bin-hadoop2.7/python/lib/py4j-0.10.9.5-src.zip:$PYTHONPATH


# Added by findspark
export SPARK_HOME=/home/nalla/apps/spark-3.2.4-bin-hadoop2.7
export PYTHONPATH=/home/nalla/apps/spark-3.2.4-bin-hadoop2.7/python:/home/nalla/apps/spark-3.2.4-bin-hadoop2.7/python/lib/py4j-0.10.9.5-src.zip:$PYTHONPATH


#alias
alias hstart='/home/nalla/apps/hadoop-2.9.1/sbin/start-dfs.sh; /home/nalla/apps/hadoop-2.9.1/sbin/start-yarn.sh'
alias hstop='/home/nalla/apps/hadoop-2.9.1/sbin/stop-dfs.sh; /home/nalla/apps/hadoop-2.9.1/sbin/stop-yarn.sh'


nalla@nallaperumal-aspire:~$ 
```
