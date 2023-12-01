#!/bin/sh

# TODO: Is it possible to work around https://github.com/zowe/zowe-cli/issues/1786 ?
# sudo apt-get update
# sudo apt-get -y install libsecret-1-0 dbus
# apt-get -y install libsecret-1-0 gnome-keyring libpam-gnome-keyring dbus-x11

pip3 install ebcdic tnz

npm install -g prebuild-install
npm install -g @zowe/cli@zowe-v2-lts

zowe plugins install @zowe/zos-ftp-for-zowe-cli@zowe-v2-lts

# TODO: Is it possible to work around https://github.com/zowe/zowe-cli/issues/1786 ?
# zowe config init --global-config
# zowe config set "profiles.base.properties.rejectUnauthorized" "false" --global-config
zowe config import ./.devcontainer/insecure.zowe.config.json --global-config

# TODO: Is it possible to work around https://github.com/zowe/zowe-cli/issues/1786 ?
# echo <<BASHRC >> /home/vscode/.bashrc
# # Unlock the Gnome keyring automatically. See:
# # https://docs.zowe.org/stable/user-guide/cli-configure-scs-on-headless-linux-os/#unlocking-the-keyring-automatically
# if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
#   exec dbus-run-session -- $SHELL
# fi

# printf '\n' | gnome-keyring-daemon -r --unlock --components=secrets
# BASHRC
