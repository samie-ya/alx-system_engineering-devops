# This script will install nginx and configure it and its header
exec { 'the bash script':
  command => './home/vagrant/alx-system_engineering-devops/0x0F-load_balancer/0-custom_http_response_header'
}
