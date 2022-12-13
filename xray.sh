#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8d976fb7-24e9-42df-8941-1e4fd4cb91ba"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

