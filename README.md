[![Build Status](https://files.ariadata.co/file/ariadata_logo.png)](https://ariadata.co)

> After Installing , use `sudo reboot` your system
---
#### Enable SSH for root user :
```sh
sudo -i
passwd
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
sed -i 's/#Port 22/Port 6070/g' /etc/ssh/sshd_config
sudo service ssh restart
echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
sudo apt --yes dist-upgrade && sudo apt --yes update && sudo apt -q --yes upgrade
```
#### If you Want to Create non-root User :
```sh
adduser mehrdad
usermod -aG sudo mehrdad
```
#### Install Common Requirements :
```sh
cd ~ && curl -o 02-common-requirements.sh -L https://github.com/pcmehrdad/from-ubuntu-to-laravel-cicd/raw/main/02-common-requirements.sh && sudo bash 02-common-requirements.sh
```
#### Install PHP-8.0 with composer :
```sh
cd ~ && curl -o 03-php8-with-composer.sh -L https://github.com/pcmehrdad/from-ubuntu-to-laravel-cicd/raw/main/03-php8-with-composer.sh && sudo bash 03-php8-with-composer.sh
```
#### Install Docker + docker-compose :
```sh
cd ~ && curl -o 04-docker-with-compose.sh -L https://github.com/pcmehrdad/from-ubuntu-to-laravel-cicd/raw/main/04-docker-with-compose.sh && sudo bash 04-docker-with-compose.sh
```
#### Install Portainer with docker (port:9999):
```sh
cd ~ && curl -o 05-install-portainer-docker.sh -L https://github.com/pcmehrdad/from-ubuntu-to-laravel-cicd/raw/main/05-install-portainer-docker.sh && sudo bash 05-install-portainer-docker.sh
```
#### Install PHPMyAdmin with docker (port:9998):
```sh
cd ~ && curl -o 06-install-phpmyadmin-docker.sh -L https://github.com/pcmehrdad/from-ubuntu-to-laravel-cicd/raw/main/06-install-phpmyadmin-docker.sh && sudo bash 06-install-phpmyadmin-docker.sh
```
#### Laravel Global Installer (+sail +laravel-new):
```sh
cd ~ && curl -o 07-laravel-global-installer.sh -L https://github.com/pcmehrdad/from-ubuntu-to-laravel-cicd/raw/main/07-laravel-global-installer.sh && bash 07-laravel-global-installer.sh
```