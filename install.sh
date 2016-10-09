#!/data/data/com.termux/files/usr/bin/bash

termux-setup-storage

if ! grep teamjedi /data/data/com.termux/files/usr/etc/apt/sources.list ; then
  echo 'deb [arch=all,arm] http://teamjedi.github.io/termux-teamjedi stable main' >> /data/data/com.termux/files/usr/etc/apt/sources.list
fi

apt update
apt install -y ospfd fs-repo-migrations gx-go gx ipfs-update ipfs ipget

