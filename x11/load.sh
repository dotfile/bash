#!/bin/bash
# vim: set filetype=bash :

# =================================================
#                Load X11 Xdefaults
# =================================================

# Note(2015-02-22): I don't recall what the following comment and 
# 'todo' even mean anymore:
#
# I've started doing this on shell spawn, because I can't seem 
# to get the login script to work correctly on multiple systems.
# TODO: Perhaps call this as a script from AwesomeWM... it doesn't
# strictly _have_ to be part of a shell init script. Think outside
# the box.

function _load_x_configs() {
  local script="${BASH_SOURCE[0]}"
  local directory=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) 
  local hostname=`uname -n` # $HOSTNAME isn't populated by this time !

  # Load base Xdefaults
  xrdb -load "$directory/Xdefaults.base"

  # Merge in system-specific Xdefaults.
  case $hostname in
    'x120e')	xrdb -merge "$directory/Xdefaults.x120e";;
    'x16')	xrdb -merge "$directory/Xdefaults.x16";;
    'darwin')	xrdb -merge "$directory/Xdefaults.darwin";;
    'vaiop')	xrdb -merge "$directory/Xdefaults.vaiop";;
    *)			  echo "${script}: Unknown hostname, '${hostname}'.";;
  esac
}

_load_x_configs ; unset -f _load_x_configs

