# Ensure python3.8 is installed
package { 'python3.8':
  ensure => installed,
}

# Ensure pip3 is installed
package { 'python3-pip':
  ensure => installed,
}

#require => Package['python3.8'],

# Install Flask
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}

# Install Werkzeug
package { 'Werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
  require  => Package['Flask'],
}
