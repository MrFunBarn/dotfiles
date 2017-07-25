#!/bin/bash

#  set-up_KUBUNTU 
#  Basic new system set-up for Kubuntu systems.
##############################################################################
#
#  Brandon Bell
#  July 2017
#
#  version 0.1
#
#  Description:
#  Installs software that I want.
#
#
##############################################################################
#  Variable definitions. 
##############################################################################

#  Set filepath for vundle installation.
VundlePath=~/.vim/bundle/Vundle.vim

#  Set list of packages to install.
PACKAGES="\
	  keepass2 \
	  build-essential \
	  r-base \
	  r-base-dev \
	  vim \
	  tmux \
	  python3-ipython \
	  python3-scipy \
	  python3-sklearn \
	  openvpn \
	  git \
	  chromium-browser \
          " 


##############################################################################
#  Install list of packages I like.
##############################################################################
##############################################################################

function pack {
	sudo apt-get install $PACKAGES
}


##############################################################################
#  Make src code directory.
##############################################################################
##############################################################################

function srcdir {
	if [ -d ~/src ] ; 
		then echo "====> src directory allready exists";
	else mkdir ~/src ;
	fi

	cd src
	git clone https://github.com/MrFunBarn/dotfiles.git
	cd
	}


##############################################################################
#  Check for .vim and vundle instalation.
##############################################################################
##############################################################################

function vimup {
	cd ~/src/dotfiles
	ln -s ~/src/dotfiles/vimrc ~/.vimrc
	cd
	if [[ -e $VundlePath ]]
	then
		echo "==> Vundle all ready installed"
	else
		echo "==> Vundle not Found, Cloneing now"
		git clone https://github.com/VundleVim/Vundle.vim.git $VundlePath
		echo "==> Vundle installed, installing plugins"
		vim +PluginInstall +qall
	fi
}


##############################################################################
#  Global git configuration. 
##############################################################################
##############################################################################

function gitup {
	git config --global user.email "bmbellat@gmail.com"
	git config --global user.name "Brandon Bell"
}


##############################################################################
#  Tmux.conf link 
##############################################################################
##############################################################################

function tmuxup {
	cd ~/src/dotfiles
	ln -s ~/src/dotfiles/tmux.conf ~/.tmux.conf
	cd
}


##############################################################################
#  Run Complete Setup.
##############################################################################
##############################################################################

function setall {
        pack
        srcdir
        vimup
        gitup
        tmuxup
}


##############################################################################
#  Parse args. 
##############################################################################
##############################################################################

while getopts ":psvgta" opt; do 
	case ${opt} in
		p ) pack
		;;
		s ) srcdir 
		;;
		v ) vimup
		;;
		g ) gitup
		;;
		t ) tmuxup
		;;
		a ) setall
		;;
	esac
done
