#!/bin/bash

if [ -z "$GALERA_NODES" -o -z "$GALERA_GROUP" ]; then
  echo "GALERA_NODES and GALERA_GROUP are required"
  exit 1
fi

OPTIONS="-a gcomm://${GALERA_NODES// /,} -g '${GALERA_GROUP}'"
[ -n "$GALERA_OPTIONS" ] && OPTIONS="$OPTIONS -o '${GALERA_OPTIONS}'"

eval exec /usr/bin/garbd ${OPTIONS}
