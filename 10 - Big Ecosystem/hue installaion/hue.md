#### step:1 Installing JDK
#### step 2: Installing Pre-Requisite Stuff

##### To install
sudo apt install ant gcc g++ libkrb5-dev *libmysqlclient-dev libssl-dev libsasl2-dev libsasl2-modules-gssapi-mit libsqlite3-dev libtidy*dev libxml2-dev libxslt-dev maven libldap2-dev python2-dev python-setuptools git

##### To uninstall
sudo apt remove ant gcc g++ libkrb5-dev *libmysqlclient-dev libssl-dev libsasl2-dev libsasl2-modules-gssapi-mit libsqlite3-dev libtidy*dev libxml2-dev libxslt-dev maven libldap2-dev python2-dev python-setuptools git

#### step 3: Installing Hue

cd /apps 
git clone http://github.com/cloudera/hue.git
cd hue
make apps

### (Not working.. better search for other resources)
