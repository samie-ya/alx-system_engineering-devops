# This will kill a process using pkill
exec { 'kill a process':
  command => 'pkill killmenow',
}
