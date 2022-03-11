# This will kill a process using pkill
exec { 'killing a process':
  command => 'pkill -9 -f killmenow',
}
