My Nginx configs
================
Aggressivly borrowed from https://github.com/h5bp/server-configs-nginx

Install
-------
```
cd some_dir
curl -L https://github.com/blopker/nginx-configs/archive/1.tar.gz | tar xv
cp -r * /etc/nginx/

cd /etc/nginx/sites-enabled/
ln -s ../sites-avaliable/somesite.com ./
```
