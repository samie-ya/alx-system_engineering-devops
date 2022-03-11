# This will kill a process using pkill
Exec { 'kill a process':
  command => '/usr/bin/pkill /home/vagrant/alx-system_engineering-devops/0x0A-configuration_management/killmenow',
}
