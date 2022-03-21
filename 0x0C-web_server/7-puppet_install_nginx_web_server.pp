# This script will install nginx and configure
exec { 'configure nginx':
  command  => 'sudo apt-get update; sudo apt-get -y install nginx; sudo ufw --force enable; sudo ufw allow "Nginx HTTP"; echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html; sudo sed -i -e "s+server_name _;+server_name 34.148.148.119;\n\trewrite ^/redirect_me https://www.youtube.com permanent;\n+" /etc/nginx/sites-available/default; echo "Ceci n\'est pas une page\n" | sudo tee /var/www/html/error404.html; sudo sed -i -e "s+:80 default_server;+:80 default_server;\n\n\terror_page 404 /error404.html;\n\tlocation = /xyz {\n\t\troot /var/www/html;\n\t\tinternal;\n\t}\n+g" /etc/nginx/sites-enabled/default; sudo service nginx restart',
  provider => shell,
}
