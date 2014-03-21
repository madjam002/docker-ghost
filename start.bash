#!/bin/bash

#
# start.bash
#

GHOST="/ghost"
OVERRIDE="/ghost-override"
CONTENT="$OVERRIDE/content"

CONFIG="config.js"

cd "$GHOST"

# Symlink content directory.
ln -s $CONTENT "content"

# Symlink config file.
if [[ -f "$OVERRIDE/$CONFIG" ]]; then
  rm -f "$CONFIG"
  ln -s "$OVERRIDE/$CONFIG" "$CONFIG"
fi

npm start
