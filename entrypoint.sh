apt-get update && apt-get install -y libbson-dev libmongoc-dev

ln -s /usr/lib/x86_64-linux-gnu/libmongoc-1.0.so /usr/lib/x86_64-linux-gnu/mongoc-1.0
ln -s /usr/lib/x86_64-linux-gnu/libmongoc-1.0.so /usr/local/lib/mongoc-1.0
ln -s /usr/lib/x86_64-linux-gnu/libmongoc-1.0.so /usr/lib/mongoc-1.0
ln -s /usr/lib/x86_64-linux-gnu/libbson-1.0.so /usr/lib/x86_64-linux-gnu/bson-1.0
ln -s /usr/lib/x86_64-linux-gnu/libbson-1.0.so /usr/local/lib/bson-1.0
ln -s /usr/lib/x86_64-linux-gnu/libbson-1.0.so /usr/lib/bson-1.0



luarocks install lua-mongo 

openresty -g "daemon off;" -c /etc/nginx/nginx.conf
