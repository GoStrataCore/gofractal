#!/bin/bash

POOL_DIR="/var/lib/5tratumos/pool/coins"

mkdir -p $POOL_DIR

cat > $POOL_DIR/fractal.json <<EOF
{
  "FB": {
    "enabled": true,
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
      "host": "0.0.0.0",
      "port": 3333,
      "difficulty": 8192
    },

    "mining": {
      "address": "YOUR_POOL_ADDRESS",
      "network": "mainnet",
      "coinbase_text": "GoStrataCore"
    },

    "vardiff": {
      "enabled": true,
      "min_diff": 8192,
      "max_diff": 262144,
      "target_time": 45,
      "retarget_time": 300,
      "variance_percent": 20
    }
  }
}
EOF
