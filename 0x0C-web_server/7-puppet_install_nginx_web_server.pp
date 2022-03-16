# This script will install nginx and configure it
exec { 'apt-get update':
    command => '/usr/bin/apt-get update'
}

package { 'nginx':
    ensure  => 'installed',
    require => Exec['apt-get update']
}
