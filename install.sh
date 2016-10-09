#!/data/data/com.termux/files/usr/bin/bash

termux-setup-storage

apt update
apt-get install -y apt-transport-https gnupg2

if ! grep teamjedi /data/data/com.termux/files/usr/etc/apt/sources.list ; then
  echo 'deb [arch=all,arm] https://teamjedi.github.io/termux-teamjedi stable main' >> /data/data/com.termux/files/usr/etc/apt/sources.list
fi

if [ ! -f apt-key.gpg ] ; then
  wget https://teamjedi.github.io/termux-teamjedi/apt-key.gpg
fi

apt-key add < apt-key.gpg

apt update
apt install -y olsrd fs-repo-migrations gx-go gx ipfs-update ipfs ipget

