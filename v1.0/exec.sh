echo "deployment start : $(date +%Y)-$(date +%m)-$(date +%d) $(date +%H):$(date +%M):$(date +%S)" > pipeline.log
yarn install
yarn build
echo $PWD | sudo -S rm -f $NGINX_UPSTREAM_PATH
echo $PWD | sudo -S ln -s $NGINX_UPSTREAM_PATH_SUB $NGINX_UPSTREAM_PATH
echo $PWD | sudo -S systemctl reload nginx
echo "nginx reload : $(date +%Y)-$(date +%m)-$(date +%d) $(date +%H):$(date +%M):$(date +%S)" >> pipeline.log

STATUS=$(curl -L -k -s -o /dev/null -w "%{http_code}" $IP)

if [ $STATUS -eq 200 ]; then
   echo "request success" >> pipeline.log
else
   echo "request fail" >> pipeline.log
fi

pm2 restart $PM2_PROCESS_NAME
