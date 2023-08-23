#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR=vim
shutdown -h 0:00

if [ "$(tty)" = "/dev/tty1" ]; then
  exec startx
fi
