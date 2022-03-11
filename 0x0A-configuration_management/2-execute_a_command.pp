# This will kill a process using pkill
exec { 'pkill':
  command => 'pkill -9 -f killmenow',
}
