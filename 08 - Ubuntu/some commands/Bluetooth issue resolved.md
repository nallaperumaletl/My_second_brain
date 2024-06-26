> [!tip]- ubuntu-tips
> bluetooth connection for OnePlusZ2 bud
==**Oneplus z2**== bud issue resolved by using this command:

```c
systemctl --user enable pulseaudio
systemctl --user start pulseaudio
```

To execute this command in every startup on ubuntu :

under /etc/init.d/
created a script which will run on every time reboot into ubuntu & chmod +x bluetooth_start_pulseaudio.sh

bluetooth_start_pulseaudio.sh

```bash
#!/bin/bash
# enable and starting pulse audio service for buletooth connectivity

systemctl --user enable pulseaudio
systemctl --user start pulseaudio
notify-send "pulseaudio enabled & started connect OneplusZ2 !"
```

```bash
chmod +x bluetooth_start_pulseaudio.sh
```
