# This will kill a process using pkill
Exec { 'kill a process':
  command => 'pkill -9 -f killmenow',
}
