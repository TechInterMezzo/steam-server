#!/bin/bash
HOME_DIR=/home/steam
SERVER_DIR=$HOME_DIR/server
mkdir -p $SERVER_DIR
chown -R steam:steam $HOME_DIR
runuser -u steam -- steamcmd +login anonymous +force_install_dir $SERVER_DIR +app_update $1 +quit
ln -s $HOME_DIR/.steam/steamcmd/linux64 $HOME_DIR/.steam/sdk64
cd $SERVER_DIR
runuser -u steam -- $2