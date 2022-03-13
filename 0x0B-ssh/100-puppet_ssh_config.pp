# This script will use Puppet to make changes to our configuration file
node default {
  include ssh::client
  class { 'ssh::client':
    option => {
      'Host *' => {
        'HostName'                => '34.148.148.119',
        'PasswordAuthenitication' => 'No',
        'IdentityFile'            => '~/.ssh/school',
      }
    }
  }
}
