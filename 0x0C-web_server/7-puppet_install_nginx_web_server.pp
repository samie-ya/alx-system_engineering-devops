# This script will install nginx and configure it
include stdlib

exec { 'sudo apt-get update':
  command => '/usr/bin/apt-get update'
}

package { 'nginx':
  ensure  => 'installed',
  require => Exec['apt-get update']
}

file_line { 'debian.html':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  line   => 'location / {\n\t\treturn 200 "Hello World!" ;\n\t}\n',
  match  => '^location /',
  notify  => Service['nginx'],
  require => Package['nginx']
}

file_line { '301 permanent redirect':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  line   => 'server_name 34.148.148.119;\n\n\tlocation /redirect_me {\n\t\treturn 301 "https://www.youtube.com/watch?v=QH2-TGUlwu4" ;\n\t}\n',
  match  => '^server_name _;',
  notify  => Service['nginx'],
  require => Package['nginx']
}

service { 'nginx':
  ensure => running,
  enable => true
}