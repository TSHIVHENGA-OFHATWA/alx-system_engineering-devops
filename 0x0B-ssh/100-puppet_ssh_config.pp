# 100-puppet_ssh_config.pp

# Ensure the .ssh directory exists
file { '/home/vagrant/.ssh':
  ensure => directory,
  owner  => 'vagrant',
  group  => 'vagrant',
  mode   => '0700',
}

# Ensure the SSH client configuration file exists
file { '/home/vagrant/.ssh/config':
  ensure  => file,
  owner   => 'vagrant',
  group   => 'vagrant',
  mode    => '0600',
  content => '',
}

# Disable password authentication
file_line { 'Turn off passwd auth':
  path  => '/home/vagrant/.ssh/config',
  line  => 'PasswordAuthentication no',
  match => '^#?PasswordAuthentication',
}

# Declare the identity file
file_line { 'Declare identity file':
  path  => '/home/vagrant/.ssh/config',
  line  => 'IdentityFile ~/.ssh/school',
  match => '^#?IdentityFile',
}
