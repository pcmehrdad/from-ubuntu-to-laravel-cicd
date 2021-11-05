#!/bin/sh
set -e
# echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
sudo apt --yes install software-properties-common aria2 bzip2 ca-certificates curl git gnupg gosu htop iotop iperf libcap2-bin libpng-dev make gcc nano net-tools nmap chrony openssh-server openssl p7zip poppler-utils apt-transport-https lsb-release python2 sqlite3 supervisor traceroute unar unzip wget zip zsh
# sudo apt --yes install network-manager
# sudo apt --yes dist-upgrade && sudo apt --yes update && sudo apt -q --yes upgrade

#### custom bash_aliases
echo 'extract () {
	for archive in $*; do
		if [ -f $archive ] ; then
			case $archive in
				*.tar.bz2)   tar xvjf $archive    ;;
				*.tar.gz)    tar xvzf $archive    ;;
				*.bz2)       bunzip2 $archive     ;;
				*.rar)       unar $archive       ;;
				*.gz)        gunzip $archive      ;;
				*.tar)       tar xvf $archive     ;;
				*.tbz2)      tar xvjf $archive    ;;
				*.tgz)       tar xvzf $archive    ;;
				*.zip)       unzip $archive       ;;
				*.Z)         uncompress $archive  ;;
				*.7z)        7za x $archive        ;;
				*)           echo "do not know how to extract $archive..." ;;
			esac
		else
			echo "$archive is not a valid file!"
		fi
	done
}
alias sc="systemctl"
alias myip4="whatsmyip4"
function whatsmyip4 (){
	curl -s "https://myip4.ir/";
}
' >> ~/.bash_aliases
## end bash_aliases

sudo apt --yes update && sudo apt -q --yes upgrade