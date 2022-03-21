# This script will install nginx and configure it and its header
exec { 'the bash script':
  command => './0-custom_http_response_header'
}
