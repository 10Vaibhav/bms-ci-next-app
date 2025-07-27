#!/bin/bash

export PATH=/usr/local/bin:/usr/bin:/usr/sbin:/sbin:$PATH

# Use full paths for Node.js tools installed via NVM
PNPM_PATH="/home/ubuntu/.nvm/versions/node/v22.17.1/bin/pnpm"
PM2_PATH="/home/ubuntu/.nvm/versions/node/v22.17.1/bin/pm2"

git pull
$PNPM_PATH install
$PNPM_PATH run build
$PM2_PATH restart fe-server
$PM2_PATH restart http-server
$PM2_PATH restart ws-server

echo "Deployment completed! App is running with PM2."