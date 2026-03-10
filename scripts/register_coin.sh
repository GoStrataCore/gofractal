#!/bin/bash

POOL_DIR="/pool/coins"
COIN_FILE="$POOL_DIR/fractal.json"

mkdir -p $POOL_DIR

if [ ! -f "$COIN_FILE" ]; then

cat <<EOF > $COIN_FILE
{
  "symbol": "FB",
  "coin_type": "fractalbitcoin",
  "node": {
    "host": "gofractal-node",
    "port": 32123,
    "username": "fractal",
    "password": "-k-moe0BzJXTjvIHgmZMdTIe",
    "zmq_enabled": true,
    "zmq_hashblock": "tcp://gofractal-node:32125"
  },
  "stratum": {
    "port": 3335,
    "difficulty": 8192
  }
}
EOF

echo "Fractal registered with GoStrataCore"

else

echo "Fractal already registered with GoStrataCore"

fi
