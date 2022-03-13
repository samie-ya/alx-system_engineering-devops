# This script will use Puppet to make changes to our configuration file
::ssh::client::config::user { 'vagrant':
  ensure => present,
  options => {
    'PasswordAuthentication' => 'No'
    'IdentityFile'           => ~/.ssh/school
  }
}
