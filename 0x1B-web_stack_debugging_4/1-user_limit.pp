# Change the OS configuration so that it is possible to login with
# the holberton user and open a file without any error message.

exec {'OS security config':
  command => 'sed -i "s/holberton/foo/" /etc/security/limits.conf',
  path    => '/usr/bin/:/bin/:/usr/sbin/:/usr/bin/env'
}
