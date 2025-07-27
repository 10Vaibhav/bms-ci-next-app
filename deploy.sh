export PATH=/usr/local/bin:/usr/bin:/usr/sbin:/sbin:$PATH


git pull
pnpm install
pnpm run build
pm2 restart fe-server
pm2 restart http-server
pm2 restart ws-server

echo "Deployment completed! App is running with PM2."