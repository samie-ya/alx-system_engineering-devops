# This script will use Puppet to make changes to our configuration fi
include stdlib
file_line { 'ssh config':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
}
file_line { 'ssh config':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthenitication No',
}
