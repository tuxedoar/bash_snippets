#!/bin/bash
 
SESSION_FILE="$HOME/.mozilla/firefox/*.default/sessionstore.js"
BACKUPDIR="$HOME/.mozilla/firefox/*.default/session-backup"
 
if [ ! -d $BACKUPDIR ]; then
        cd $HOME/.mozilla/firefox/*.default/
        mkdir session-backup
else
        cd $BACKUPDIR
        cp -p  $SESSION_FILE  sessionstore-$(date +%d-%m-%Y).js
 
fi