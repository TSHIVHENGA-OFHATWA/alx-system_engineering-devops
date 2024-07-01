# 2-execute_a_command.pp

exec { 'pkill -f killmenow',
  path => '/bin:/usr/bin:/sbin:/usr/sbin',
}
