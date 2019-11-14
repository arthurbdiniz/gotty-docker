#!/bin/bash

if [ -z "$GOTTY_CREDENTIAL" ]
then
      /usr/local/bin/gotty --permit-write --reconnect /bin/bash
else
      /usr/local/bin/gotty --permit-write -c $GOTTY_CREDENTIAL --reconnect /bin/bash
fi