# This script will use Puppet to make changes to our configuration fi
include stdlib

file_line { 'ssh config':
  ensure => present,
  path   => '/etc/ssh/config',
  line   => 'HostName 34.148.148.119',
  line   => 'PasswordAuthenitication No',
  line   => 'IdentityFile ~/.ssh/school',
}
