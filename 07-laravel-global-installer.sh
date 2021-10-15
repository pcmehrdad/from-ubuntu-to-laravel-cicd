#!/bin/bash
set -e
composer global require laravel/installer --update-with-all-dependencies
echo 'export PATH="$HOME/.config/composer/vendor/bin:$PATH"' >> ~/.bashrc
# source ~/.bashrc
# sudo chown -R $USER:$USER /home/$USER/.config/composer
### sail install alias
echo "alias sail='./vendor/bin/sail'" >> ~/.bash_aliases
echo 'laravel-new(){
	curl -s "https://laravel.build/$1" | bash
	sudo sed -i 's/laravel.test/'"$1"'.test/g' $1/docker-compose.yml
}' >> ~/.bash_aliases
# updated
source ~/.bash_aliases