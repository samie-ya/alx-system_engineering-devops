# This script will use Puppet to make changes to our configuration file
class { 'ssh::client':
  storeconfigs_enabled => false,
  options              => {
    'Host *' => {
      'HostName'                => '34.148.148.119',
      'PasswordAuthenitication' => 'No',
      'IdentityFile'            => '~/.ssh/school',
    },
  },
}
