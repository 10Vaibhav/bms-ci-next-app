#!/bin/bash

export PATH="/home/ubuntu/.nvm/versions/node/v22.17.1/bin:$PATH"

pnpm install
pnpm run build
pm2 restart fe-server
pm2 restart http_server
pm2 restart ws-server

echo "Deployment completed!"
