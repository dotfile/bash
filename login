# vim: set filetype=bash :
# ~/.profile: executed by the command interpreter for 
# login shells.
# This file is not read by bash(1), if ~/.bash_profile or 
# ~/.bash_login exists.
# see /usr/share/doc/bash/examples/startup-files for 
# examples. The files are located in the bash-doc package.
# The default umask is set in /etc/profile; for setting 
# the umask for ssh logins, install and configure the 
# libpam-umask package. umask 022

# XXX: Link this from .profile !

MY_CONFDIR=$HOME'/.config/bash'

# $HOSTNAME isn't populated by this time !
MY_HOSTNAME=`uname -n`

# Load global Xdefaults at login *at login*
# And also merge in machine-specific Xdefaults
xrdb -load "$MY_CONFDIR/Xdefaults"

case $MY_HOSTNAME in
	'x120e')	xrdb -merge "$MY_CONFDIR/Xdefaults.x120e";;
	'vaiop')	xrdb -merge "$MY_CONFDIR/Xdefaults.vaiop";;
	*)			echo "Invalid Hostname";;
esac

# Xmodmap
if [ -f $HOME/.Xmodmap ]; then
    /usr/bin/xmodmap $HOME/.Xmodmap
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

