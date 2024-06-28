
clearing IDEAS:

[https://askubuntu.com/questions/1335229/how-to-deal-with-snap-using-a-lot-of-storage-space]()

[https://askubuntu.com/questions/1462400/removing-old-and-unneeded-snaps]()

[https://askubuntu.com/questions/1035915/how-to-remove-snap-from-ubuntu/1035917#1035917]()


[https://askubuntu.com/questions/1095127/what-does-snap-gnome-3-26-1604-do-can-it-be-removed-without-breaking-ubuntu-18]()

grep "default-provider:\|base:" /snap/*/current/meta/snap.yaml | awk '{print $NF}' | sort -u
