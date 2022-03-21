# This script will install nginx and configure it
class { 'nginx':
  exec { 'apt-get update':
   command => '/usr/bin/apt-get update'
  }

  package { 'nginx':
    ensure  => 'installed',
    require => Exec['apt-get update'],
  }

  service { 'nginx':
    ensure  => running,
    require => Package['nginx'],
  }

  nginx::resource::vhost { 'status':
    listen_port => '80',
    headers     => 'set X-Served-By "1359-web-02"',
  }
}
