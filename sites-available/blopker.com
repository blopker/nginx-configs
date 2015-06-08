server {
  listen [::]:80 deferred; # for Linux
  listen 80 deferred; # for Linux

  server_name www.blopker.com;

  return 301 $scheme://blopker.com$request_uri;
}

server {
  listen [::]:80 deferred; # for Linux
  listen 80 deferred; # for Linux

  # The host name to respond to
  server_name blopker.com;

  access_log  /home/static/logs/blopker.access.log main;
  error_log /home/static/logs/blopker.error.log error;

  # Path for static files
  root /home/static/production/blopker.com;

  # Specify a charset
  charset utf-8;

  expires 5d;

  # Basic h5bp rules
  include h5bp/directive-only/x-ua-compatible.conf;
  include h5bp/directive-only/extra-security.conf;
  include h5bp/location/protect-system-files.conf;
}
