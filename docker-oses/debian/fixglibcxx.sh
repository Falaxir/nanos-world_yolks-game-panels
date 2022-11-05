#!/bin/sh
echo "deb http://ftp.fr.debian.org/debian/ testing main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://ftp.fr.debian.org/debian/ testing main contrib non-free" >> /etc/apt/sources.list
tee -a /etc/apt/preferences << END
Package: *
Pin: release a=stable
Pin-Priority: 900

Package: *
Pin: release a=testing
Pin-Priority: 400
END
apt update
apt-get --target-release testing install libstdc++6
