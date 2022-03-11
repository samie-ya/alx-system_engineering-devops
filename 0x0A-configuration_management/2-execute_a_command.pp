# This will kill a process using pkill
exec { 'pkill -9 -f killmenow':
  command => 'pkill -9 -f killmenow',
}
