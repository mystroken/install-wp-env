#!/bin/bash

## Test Requirements first! (git, wget)

# Get Installation directory
[[ -z $1 ]] && INSTALLATION_DIR="$PWD" || INSTALLATION_DIR="$1"


# Check if INSTALLATION DIR exist
#if [ ! -d $INSTALLATION_DIR ] ; then
#    echo "The installation directory must exist"
#    exit 0;
#fi


################################################################################
# BEGIN INSTALLATION
################################################################################

# First clone directory
git clone https://github.com/vccw-team/vccw.git "$INSTALLATION_DIR"
rm -rf "$INSTALLATION_DIR/.git"
cp "$INSTALLATION_DIR/provision/default.yml" "$INSTALLATION_DIR/site.yml"

# Get the wordpress project
wget -P "$INSTALLATION_DIR" https://wordpress.org/latest.tar.gz
tar -xvf "$INSTALLATION_DIR/latest.tar.gz" -C "$INSTALLATION_DIR"