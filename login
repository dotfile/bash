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

TERM_CONFIG_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Load global X11 configs *at login*
source "$TERM_CONFIG_DIR/x11/load.sh"

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

