#!/bin/bash

CONTAINER_NAME="next-core"
IMAGE_NAME="talenta/next-core"

docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
docker rmi $IMAGE_NAME

LAST_PORT=8060
NGINX_PROXY=""
for locale in ls ./locales | grep es-CO
do
  LAST_PORT=$((LAST_PORT+1))
  country_code=echo $locale | cut -d "-" -f 2 | tr '[:upper:]' '[:lower:]'
  echo "=====================[BUILDING NEXT APP: $country_code]====================="
  APP_BUILD_PATH=".next/$country_code" APP_MAIN_PATH="/$country_code" ./node_modules/.bin/next build
  NGINX_PROXY="""$NGINX_PROXY
  location /${country_code}/ {
    proxy_pass http://127.0.0.1:$LAST_PORT;

    # Allow the use of websockets
    proxy_http_version 1.1;
    proxy_set_header X-Real-IP \$remote_addr;
    proxy_set_header Upgrade \$http_upgrade;
    proxy_set_header Connection 'upgrade';
    proxy_set_header Host \$host;
    proxy_cache_bypass \$http_upgrade;
  }
  """
  echo "=====================[BUILT NEXT APP: $country_code]====================="
  echo ""
done
NGINX_PROXY="""server {
  access_log  /dev/null;
  error_log /dev/null;
  listen 3000;
  $NGINX_PROXY
}"""
printf "%s" "$NGINX_PROXY" > docker.nginx.conf
docker build -t $IMAGE_NAME .
docker run -d -p 8061:3000 \
  -e APP_ENV="development" \
  -e APP_FULL_BASE_PATH="http://localhost:8061/{countryCode}" \
  -e APP_CDN_DOMAIN="http://localhost:8061/{countryCode}" \
--name $CONTAINER_NAME $IMAGE_NAME