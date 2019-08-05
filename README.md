How to Run

docker run -d -p 8082:80   --name test-nginx  -v /opt/nginx01/www/html:/usr/share/nginx/html \
-v /opt/nginx01/conf/default.conf:/etc/nginx/conf.d/default.conf   \
-v /opt/nginx01/images:/opt/images \
nginx-test:v2



