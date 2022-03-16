# This script will use Puppet to make changes to our configuration fi
node default {
  include stdlib
  file_line { 'ssh config':
    ensure => present,
    path   => '/etc/ssh/config',
    line   => 'PasswordAuthenitication No', 'IdentityFile ~/.ssh/school',
  }
}
