# This will kill a process using pkill
class exec {
  exec { 'kill a process':
    command => 'pkill -9 -f killmenow',
  }
}
