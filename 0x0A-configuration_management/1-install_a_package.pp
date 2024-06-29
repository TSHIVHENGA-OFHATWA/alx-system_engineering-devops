# install_flask.pp

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  unless  => '/usr/bin/pip3 show flask | grep -q "^Version: 2.1.0$"',
  require => Package['python3-pip'],
}
