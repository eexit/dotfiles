#!/bin/zsh
set -e

rm -rf /usr/local/etc/tor/torrc
ln -s $ZSH/system/torrc /usr/local/etc/tor/torrc

# Do that someday:
# https://macmule.com/2014/12/07/how-to-change-the-automatic-proxy-configuration-url-in-system-preferences-via-a-script/
