# This script will use Puppet to make changes to our configuration fi
include stdlib

file_line { 'ssh config for password':
    ensure => present,
    path   => '/etc/ssh/ssh_config',
    line   => 'PasswordAuthentication No',
    match  => '^PasswordAuthentication'
}

include stdlib

file_line { 'ssh config for ID':
    ensure => present,
    path   => '/etc/ssh/ssh_config',
    line   => 'IdentityFile ~/.ssh/school',
    match  => '^IdentityFile'
}
