# Command to modify the max open files limit in the Nginx configuration 
# by replacing the value "15" with "10000" in the /etc/default/nginx file.

exec {'modify max open files limit setting':
  command => 'sed -i "s/15/12288/" /etc/default/nginx && service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}
