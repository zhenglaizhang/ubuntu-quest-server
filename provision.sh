# shadowsocks-qt5
sudo add-apt-repository ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install shadowsocks-qt5
# optional: sudo apt-get -f install libappindicator1 libindicator7



sudo apt-get install python3-pip
pip install pgcli



sudo apt install xclip

# make bootable disk with gddrescue
apt-get install gddrescue
fdisk -l
# take care to grap the device name of the usb disk
ddrescue -d -D --force <path and file name of the ISO> /dev/<device name>

# make bootable disk with dd
dd if=/home/user/downloads/ubuntu-16.04-server-amd64.iso of=/dev/sdc bs=1M; sync


# Mac
# hdiutil convert -format UDRW -o <path_to_save_IMG_file> <path_to_ISO_image> # convert img to iso
# diskutil list
# diskutil unmountDisk /dev/disk2
# # sudo dd if=<path_to_IMG_file> of=<device_node_of_usb_media> bs=1m



sudo apt-get remove ibus  // 卸载ibus输入法
sudo apt-get remove scim  // 卸载ibus输入法
sudo apt-get autoremove   // 删除依赖包，不再使用的package
sudo apt-get -f install   // 尝试修正安装过程中出现的依赖性关系
sudo add-apt-repository ppa:fcitx-team/nightly



# zsh
sudo apt-get update && \
sudo apt-get install -y \
  curl \
  vim \
  git \
  zsh
  
# apt-get install zsh
# apt-get install git-core
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# ls -l /bin/sh
# chsh -s /bin/zsh
# sudo chsh -s $(which zsh) $(whoami)
# relogin session to see the new change
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# fancy zsh theme
sudo apt install fonts-powerline
# need to update .zsh
# ZSH_THEME="agnoster"


# hub
sudo add-apt-repository ppa:cpick/hub
sudo apt-get update
sudo apt-get install hub

# tmux
sudo apt-get update -yqqu
sudo add-apt-repository -yu ppa:pi-rho/dev
sudo apt-get update -yqqu
sudo apt-get install -yqqu python-software-properties software-properties-common
sudo apt-get install -yqq tmux-next=2.3~20160913~bzr3547+20-1ubuntu1~ppa0~ubuntu16.04.1

# ubuntu-make
# sudo apt install ubuntu-make
# or use:
# sudo apt-get install software-properties-common # install add-apt-repository
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
#  /etc/apt/sources.list.d
sudo apt-get update
sudo apt-get install ubuntu-make

# jdk 8
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo apt-get install oracle-java8-set-default


# maven
sudo apt-get install maven

# scala
# sudo apt-get remove scala-library scala
# sudo wget www.scala-lang.org/files/archive/scala-2.11.8.deb
# sudo dpkg -i scala-2.11.8.deb
sudo apt-get install scala scala-doc


# sbt 
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get update
sudo apt-get install sbt

# idea
umake ide idea-ultimate
# umake -r ide idea-ultimate


# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
# in case any deps warning or errors, run
# sudo apt-get install -f


# docker
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
sudo apt-get update
# install from docker repo instead of ubuntu repo
apt-cache policy docker-engine
sudo apt-get install -y docker-engine
sudo systemctl status docker
# avoid sudo to run docker, need to logout & login 
sudo usermod -aG docker $(whoami)



# firacode
# ubuntu mono powerline font
