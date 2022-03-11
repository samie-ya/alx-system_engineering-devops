# This will kill a process using pkill
Exec { 'kill a process':
  command => 'pkill killmenow', 
}
