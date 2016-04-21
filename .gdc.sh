#!/bin/bash
# FileName: .gdc.sh
# Author  : Gao D. Cheng
# Email   : admin[at]dalinux.com
#
# This file should be put into $HOME directory. 
# And add below line to $HOME/.bashrc file to get itself included.
# code : . $HOME/.gdc.sh

# alias cmd
alias l='\ls --color=auto'
alias ls='ls -F --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -a --color=auto'
alias grep='grep --color=auto'
alias info='info --vi-keys'
alias chownwww='sudo chown -Rc www-data.www-data'
alias sshrhcloud='ssh -D 1081 56c9b42a2d5271812d000178@php-dalinux.rhcloud.com'
# alias googleproxy='google-chrome --proxy-server=socks5://127.0.0.1:1080'
# alias hex2bin='objcopy -I ihex -O binary'

# export var
# PS1='\W \$ '
export SOCKS5_SERVER=127.0.0.1:1080
export EDITOR=vim
export sdccinclude=/usr/share/sdcc/include
export MINICOM='-m -c on'
export www=/var/www/html
export TERM=screen-256color

# disable powerline
# . /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh
