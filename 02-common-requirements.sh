#!/bin/sh
set -e
echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
sudo apt --yes install software-properties-common aria2 bzip2 ca-certificates curl git gnupg gosu htop iotop iperf libcap2-bin libpng-dev make gcc nano net-tools nmap chrony openssh-server openssl p7zip poppler-utils python2 sqlite3 supervisor traceroute unar unzip wget zip zsh
sudo apt --yes dist-upgrade && sudo apt --yes update && sudo apt -q --yes upgrade