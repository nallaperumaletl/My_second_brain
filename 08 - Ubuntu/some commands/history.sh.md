
```bash
1  whoami
2  uname -a
3  lsb_release -a
4  exit
5  sudo apt-get update 
6  lsb_release -a
7  exit
8  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
   9  cd ~/Downloads/
   10  sudo dpkg -i google-chrome-stable_current_amd64.deb 
   11  cd ..
   12  sudo dpkg -i google-chrome-stable_current_amd64.deb 
   13  clear
   14  exit
   15  sudo apt-get update 
   16  sudo apt-get install openjdk-8-jdk
   17  java -version
   18  ls /usr/lib/jvm/java-1.8.0-openjdk-amd64
   19  ls -a
   20  vi .bashrc 
   21  nano .bashrc 
   22  vi .bashrc 
   23  source .bashrc 
   24  clear
   25  hostname
   26  source .bashrc 
   27  clear
   28  pwd
   29  username
   30  echo $username
   31  echo $USERNAME
   32  vi .bashrc 
   33  vim .bashrc 
   34  sudo apt install vim 
   35  vim .bashrc 
   36  source .bashrc 
   37  clear
   38  sudo apt-get install openssh-server
   39  ssh localhost 
   40  clear
   41  ssh localhost 
   42  ssh-keygen -t rsa
   43  ls
   44  cd .ssh/
   45  ls
   46  cat id_rsa.pub >> authorized_keys
   47  ssh localhost 
   48  cd ..
   49  sudo apt-get install openssh-server
   50  ssh-keygen -t rsa
   51  cd .ssh/
   52  ls -ltr
   53  chmod 777 
   54  ls -ltr
   55  cat id_rsa.pub >> authorized_keys
   56  cat
   57  cat authorized_keys 
   58  rm authorized_keys 
   59  cat id_rsa.pub >> authorized_keys
   60  cat authorized_keys 
   61  ssh localhost 
   62  ssh localhost 
   63  ssh localhost 
   64  cd apps/hadoop-2.9.1/
   65  bin/hadoop namenode -format
   66  sbin/start-all.sh 
   67  cd ~
   68  cd .ssh/
   69  rm -rf *
   70  history 
   71  clear
   72  ssh localhost 
   73  ls -a
   74  cd .ssh/
   75  ls
   76  ssh-keygen -t rsa
   77  cat id_rsa.pub >> authorized_keys
   78  ls
   79  ssh localhost 
   80  cd apps/hadoop-2.9.1/
   81  sbin/start-all.sh 
   82  jps
   83  sbin/stop-all.sh 
   84  sbin/start-dfs.sh 
   85  sbin/start-yarn.sh 
   86  jps
   87  cat The authenticity of host 'localhost (127.0.0.1)' cant be established.
   88  ED25519 key fingerp
   89  ;
   90  jps
   91  sbin/stop-all.sh 
   92  cd etc/hadoop/
   93  mkdir tmp
   94  ls -ll
   95  sudo chmod 750 /tmp/
   96  ls -ll
   97  hdfs namenode -format
   98  cd ..
   99  sbin/start-dfs.sh 
  100  jps
  101  sbin/start-yarn.sh 
  102  jps
  103  cd apps/hadoop-2.9.1/
  104  sbin/start-dfs.sh 
  105  sbin/start-yarn.sh 
  106  jps
  107  clear
  108  jps
  109  clear
  110  sbin/stop-all.sh 
  111  ls
  112  cd ..
  113  ls
  114  ls ld hadoop2.9.1-nodedir/
  115  ls -ld hadoop2.9.1-nodedir/
  116  ls -ltr hadoop2.9.1-nodedir/
  117  chmod +777 hadoop2.9.1-nodedir/
  118  ls -ltr hadoop2.9.1-nodedir/
  119  ls -ld hadoop2.9.1-nodedir/
  120  cd hadoop-2.9.1/
  121  cd etc/hadoop/
  122  ls -ltr
  123  ls -ltr hadooptmp/
  124  jps
  125  cd ~
  126  clear
  127  cd apps/hadoop-2.9.1/
  128  bin/hadoop namenode -format
  129  sbin/start-dfs.sh 
  130  sbin/start-yarn.sh 
  131  jps
  132  sbin/stop-all.sh 
  133  jps
  134  python3
  135  hadoop version
  136  vim .bashrc 
  137  cd $SPARK_HOME
  138  source .bashrc 
  139  cd $SPARK_HOME
  140  ls
  141  cd python/
  142  ls
  143  cd ~
  144  sudo apt install python3-pip
  145  pip --version
  146  python3 --version
  147  pip install jupyter
  148  jupyter notebook
  149  source .bashrc 
  150  clear
  151  pyspark
  152  clear
  153  pyspark
  154  jps
  155  kill -9 116195
  156  clear
  157  history 
  158  cat .bashrc 
  159  sudo service hive-metastore status
  160  jps
  161  sudo apt update
  162  sudo apt install snapd
  163  sudo snap install mysql-workbench-community
  164  cd apps/spark-3.2.4-bin-hadoop2.7/
  165  bin/spark-shell
  166  jps
  167  clear
  168  exit
  169  touch pyspark-jupterNotebook.txt
  170  vim pyspark-jupterNotebook.txt 
  171  clear
  172  cd ~
  173  clear
  174  sudo apt-get install mysql-server
  175  clear
  176  sudo systemctl status mysql.service 
  177  sudo mysql -u root -p
  178  sudo mysql -u root
  179  sudo mysql -u root -p
  180  clear
  181  exit
  182  jps
  183  ps aux | grep -i cassandra
  184  kill -9 134944
  185  kill -9 135095
  186  kill -9 134794
  187  clear
  188  ps aux | grep -i cassandra
  189  jps -lm | grep -i spark
  190  clear
  191  tail -10 .bashrc 
  192  tail -20 .bashrc 
  193  clear
  194  cd apps/cassandra/apache-cassandra-4.0.11/
  195  bin/cassandra
  196  clear
  197  bin/cqlsh
  198  cd ~
  199  cd apps/hadoop-2.9.1/
  200  sbin/start-dfs.sh 
  201  sbin/start-yarn.sh 
  202  jps
  203  echo $JAVA_HOME
  204  jps
  205  sbin/stop-dfs.sh 
  206  sbin/stop-yarn.sh 
  207  jps
  208  kill -9 116195
  209  clear
  210  cd ~
  211  pyspark
  212  clear
  213  bin/schematool -dbType mysql -initSchema
  214  bin/hive
  215  clear
  216  jps
  217  cd ~
  218  clear
  219  cd ./Downloads/
  220  sudo dpkg -i code_1.85.1-1702462158_amd64.deb 
  221  code .
  222  cd ~
  223  ifconfig
  224  sudo apt install net-tools 
  225  ifconfig
  226  nmcli device show
  227  top
  228  clear
  229  cd apps/hadoop-2.9.1/
  230  sbin/start-dfs.sh 
  231  sbin/start-yarn.sh 
  232  jps 
  233  cd ..
  234  cd spark-3.2.4-bin-hadoop2.7/
  235  bin/spark-shell
  236  clear
  237  jps
  238  kill -9 116195
  239  kill -9 132968
  240  ./beeline 
  241  ./beeline 
  242  hiveserver2 
  243  clear
  244  jps
  245  sudo apt-get install blueman
  246  sudo apt install --reinstall pulseaudio pulseaudio-module-bluetooth
  247  sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream
  248  sudo apt update
  249  sudo apt install pipewire
  250  sudo apt install libspa-0.2-bluetooth
  251  sudo apt install pipewire-audio-client-libraries
  252  systemctl — user daemon-reload
  253  clear
  254  bluetoothctl 
  255  clear
  256  jps
  257  sudo apt remove firefox
  258  ls /usr/bin/firefox
  259  ls /usr/local/firefox
  260  sudo ls /usr/local/firefox
  261  sudo snap remove firefox
  262  ls /etc/firefox/
  263  ls -ltr
  264  ls -ltr /etc/firefox/
  265  cd /etc/firefox/pref/
  266  ls
  267  cd ~
  268  locate firefox
  269  locate thunderbird
  270  ls -a 
  271  sudo apt-get purge thunderbird*
  272  sudo apt-get remove thunderbird
  273  clear
  274  exit
  275  jupyter
  276  jupyter notebook
  277  jps
  278  top
  279  vi kill_spark_process.sh
  280  chmod +x kill_spark_process.sh 
  281  ls
  282  ls -ll
  283  ./kill_spark_process.sh 
  284  jps
  285  vi kill_spark_process.sh
  286  ./kill_spark_process.sh 
  287  jps
  288  vi kill_spark_process.sh
  289  jps
  290  ./kill_spark_process.sh 
  291  jps
  292  kill -9 8419
  293  jps
  294  kill -9 8419
  295  jps
  296  kill 8419
  297  jps
  298  ls
  299  cat cassandra.sh 
  300  ./cassandra.sh 
  301  tail -10 /home/nalla/apps/cassandra/apache-cassandra-4.0.11/bin/nohup.out
  302  ./kill_cassandra_process.sh 
  303  jps
  304  cat kill_cassandra_process.sh 
  305  ps -ef | grep SparkSubmit | grep -v grep | awk '{print $2}'
  306  ps -ef | grep SparkSubmit | awk '{print $2}'
  307  ps -ef | grep SparkSubmit | grep -v grep | awk '{print $2}'
  308  (ps -ef | grep SparkSubmit | grep -v grep | awk '{print $2}')
  309  jps
  310  ps ef | grep SparkSubmit
  311  jps 
  312  jps | grep SparkSubmit | awk '{print $1,$2}'
  313  jps | grep SparkSubmit | awk '{print $1}'
  314  cat kill_cassandra_process.sh 
  315  ls 
  316  ./cassandrasparkOnJupyterNotebook.sh 
  317  sudo apt update 
  318  sudo apt install pulseaudio
  319  sudo apt install pavucontrol
  320  sudo gedit /usr/share/pulseaudio/alsa-mixer/paths/analog-output-speaker-conf
  321  sudo apt-get remove --auto-remove blueman 
  322  sudo apt-get remove --auto-remove libspa-0.2-bluetooth
  323  exit
  324  sudo touch /usr/share/pipewire/media-session.d/with-pulseaudio
  325  systemctl --user restart pipewire-session-manager
  326  history
  327  exit
  328  jps
  329  jupyter notebook
  330  top
  331  systemctl status mysql.service 
  332  systemctl --help 
  333  /bin/python3
  334  clear
  335  /bin/python3 /home/nalla/Learning-coursera/Python-for-Data-Engineering/my_understanding_etl.py
  336  cd Python-for-Data-Engineering/
  337  python3.10 my_understanding_etl.py 
  338  clear
  339  pwd
  340  /bin/python3 /home/nalla/Learning-coursera/Python-for-Data-Engineering/my_understanding_etl.py
  341  python3 my_understanding_etl.py 
  342  /bin/python3 /home/nalla/Learning-coursera/Python-for-Data-Engineering/etl_code.py
  343  /bin/python3 /home/nalla/Learning-coursera/Python-for-Data-Engineering/my_understanding_etl.py
  344  python3 my_understanding_etl.py
  345  /bin/python3 /home/nalla/Learning-coursera/Python-for-Data-Engineering/my_understanding_etl.py
  346  /bin/python3 /home/nalla/Learning-coursera/Python-for-Data-Engineering/etl_code.py
  347  ls
  348  cd Python-for-Data-Engineering/
  349  ls
  350  unzip source.zip 
  351  python3 -version
  352  python3 --version
  353  python3
  354  clear
  355  /bin/python3 /home/nalla/Learning-coursera/Python-for-Data-Engineering/understanging_glob.py
  356  /bin/python3
  357  clear
  358  /bin/python3 /home/nalla/Learning-coursera/Python-for-Data-Engineering/understanging_glob.py
  359  for name in glob.glob('*.csv'): 
  360  /bin/python3 /home/nalla/Learning-coursera/Python-for-Data-Engineering/understanging_glob.py
  361  cd Python-for-Data-Engineering/
  362  python3 understanging_glob.py 
  363  top
  364  /bin/python3 /home/nalla/Learning-coursera/my-workouts/etl_csv_pandas.py
  365  cd my-workouts/
  366  python3 etl_csv_pandas.py 
  367  /bin/python3 /home/nalla/Learning-coursera/my-workouts/etl_csv_pandas.py
  368  cd my-workouts/
  369  python3.10 etl_csv_pandas.py 
  370  top
  371  sudo dpkg -i dbeaver-ce_23.3.2_amd64.deb 
  372  dbeaver-ce --version
  373  exit 
  374  top
  375  /bin/python3 /home/nalla/Learning-coursera/web-scraping/samecode.py
  376  clear
  377  /bin/python3 /home/nalla/Learning-coursera/web-scraping/samecode.py
  378  clear
  379  /bin/python3 /home/nalla/Learning-coursera/Python-for-Data-Engineering/Handson_withSolution/ETL-withPython_GDP.py
  380  ps aux | grep jupyter
  381  kill -9 13541
  382  ps aux | grep jupyter
  383  kill -9 13705
  384  exit
  385  jps
  386  ps aux | grep jupyter
  387  kill -9 3344
  388  kill -9 5794
  389  clear
  390  top
  391  /bin/python3 /home/nalla/Learning-coursera/Amazon-webscrapping/movies_web_scrap/topIMDB_movies_scrap.py
  392  pip3 install openpyxl
  393  /bin/python3 /home/nalla/Learning-coursera/Amazon-webscrapping/movies_web_scrap/topIMDB_movies_scrap.py
  394  /bin/python3.10 /home/nalla/Learning-coursera/Amazon-webscrapping/movies_web_scrap/topIMDB_movies_scrap.py
  395  /bin/python3 /home/nalla/Learning-coursera/Amazon-webscrapping/movies_web_scrap/topIMDB_movies_scrap.py
  396  /bin/python3 /home/nalla/Learning-coursera/certification-coursera/bank_project.py
  397  printenv > "/tmp/tmp-9336dGoKtATD7IWw.txt"
  398  /bin/python3 /home/nalla/Learning-coursera/Amazon-webscrapping/movies_web_scrap/topIMDB_movies_scrap.py
  399  /bin/python3 /home/nalla/web-scrap-final/freecodecamp-webscrap/main.py
  400  pip install lxml
  401  vi cassandra.sh 
  402  sh cassandra.sh 
  403  ./cassandra.sh 
  404  vi cassandra.sh 
  405  clear
  406  /bin/python3 /home/nalla/web-scrap-final/darshil_YT-webScrap/my_module.py
  407  /bin/python3 /home/nalla/web-scrap-final/darshil_YT-webScrap/start.py
  408  /bin/python3 /home/nalla/web-scrap-final/my_office_test/param.py
  409  /bin/python3 /home/nalla/web-scrap-final/darshil_YT-webScrap/amazon_scrape.ipynb
  410  /bin/python3 /home/nalla/web-scrap-final/tata_group_scrap/tata_scrape.py
  411  /bin/python3 /home/nalla/web-scrap-final/tata_group_scrap/notebook_tata.ipynb
  412  cd ~
  413  cat .bashrc 
  414  sudo apt update -y & sudo apt upgrade -y
  415  sudo apt-get install build-essential libssl-dev libffi-dev python3-dev python3-pip libsasl2-dev libldap2-dev default-libmysqlclient-dev python3.10-venv
  416  cd apps/
  417  mkdir superset-app
  418  ls -ltr
  419  cd ..
  420  ls ltr
  421  ls -ltr
  422  cd apps/
  423  sudo chown nalla /home/nalla/apps/superset-app/
  424  cd superset-app/
  425  mkdir superset
  426  cd superset/
  427  python3 -m venv superset_env
  428  ls
  429  . superset_env/bin/activate
  430  pip install --upgrade setuptools pip
  431  pip install pillow
  432  pip install apache-superset
  433  ls
  434  touch superset_config.py
  435  ls
  436  pwd
  437  nano superset_config.py 
  438  export SUPERSET_CONFIG_PATH=/home/nalla/apps/superset-app/superset/superset_config.py
  439  nano superset_config.py 
  440  openssl rand -base64 42
  441  nano superset_config.py 
  442  view superset_config.py 
  443  export FLASK_APP=superset
  444  superset db upgrade
  445  superset fab create-admin
  446  superset init
  447  ls
  448  nano run_superset.sh
  449  cat run_superset.sh 
  450  chmod +x run_superset.sh 
  451  ./run_superset.sh 
  452  pip install gevent
  453  ./run_superset.sh 
  454  sudo nano /etc/systemd/system/superset.service
  455  cat /etc/systemd/system/superset.service
  456  systemctl daemon-reload
  457  sudo systemctl daemon-reload
  458  sudo systemctl enable superset.service
  459  sudo systemctl start superset.service
  460  sudo systemctl status superset.service
  461  sudo systemctl enable superset.service
  462  sudo systemctl status superset.service
  463  sudo systemctl start superset.service
  464  sudo systemctl status superset.service
  465  sudo systemctl start superset.service
  466  sudo systemctl status superset.service
  467  ps aux 8088
  468  ps aux superset
  469  sudo systemctl start superset.service
  470  sudo systemctl status superset.service
  471  sudo systemctl stop superset.service
  472  cd apps/superset-app/superset/
  473  ls
  474  . superset_env/bin/activate
  475  sudo apt-get install pkg-config 
  476  pip install mysqlclient 
  477  pip install cx_Oracle 
  478  pip install snowflake-sqlalchemy 
  479  pip install pymssql 
  480  pip install pyhive 
  481  pip install sqlalchemy-redshift
  482  sudo systemctl status superset.service
  483  sudo systemctl start superset.service
  484  sudo systemctl status superset.service
  485  sudo systemctl status superset.service
  486  exit
  487  systemctl stop superset.service 
  488  ps aux
  489  sudo systemctl start superset.service
  490  sudo systemctl status superset.service
  491  sudo systemctl stop superset.service
  492  systemctl start superset.service
  493  systemctl status superset.service
  494  systemctl stop superset.service
  495  timedatectl 
  496  timedatectl set-local-rtc 1 --adjust-system-clock 
  497  timedatectl 
  498  history 
  499  history > /home/nalla/history.txt
```
