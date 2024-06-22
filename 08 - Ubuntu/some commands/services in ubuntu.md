
automatic system defined service or application defined:
```bash
ls /lib/systemd/system/mys*.service
```
user defined services :
```bash
ls etc/systemd/system/*.service
```

> [!TIPS] services to handle
/etc/init.d/mysql start 
systemctl status mysql.service 
/etc/init.d/mysql stop 

vi stop_service.sh
```bASH
chmod +x stop_service.sh
```

```bash
#!/bin/bash

# To stop superset & mysql service (To avoid Memory consumption)

systemctl stop superset.service
#systemctl status superset.service

systemctl stop mysql.service
#systemctl status mysql.service
notify-send "stopped mysql.service & superset.service"
echo "to enable mysql service"
echo "systemctl start mysql.service"
echo "to enable superset service"
echo "systemctl start superset.service"
echo ""
```