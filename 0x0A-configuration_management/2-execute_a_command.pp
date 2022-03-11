# This will kill a process using pkill
exec { 'kill a process':
  command => 'pkill -9 -f killmenow',
}

