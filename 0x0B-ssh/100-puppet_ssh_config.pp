# This is my ubuntu sever for 237907-web-01

# Ensure the .ssh directory exists
file { '~/.ssh':
  ensure => directory,
  owner  => 'vagrant',
  group  => 'vagrant',
  mode   => '0700',
}

# Ensure the SSH client configuration file exists
file { '~/.ssh/config':
  ensure  => file,
  owner   => 'vagrant',
  group   => 'vagrant',
  mode    => '0600',
  content => '',
}

# Declare the identity file
file_line { 'Declare identity file':
  path  => '~/.ssh/config',
  line  => 'IdentityFile ~/.ssh/school',
  match => '^#?IdentityFile',

# Disable password authentication
file_line { 'Turn off passwd auth':
  path  => '~/.ssh/config',
  line  => 'PasswordAuthentication no',
  match => '^#?PasswordAuthentication',
}

#Host my_server
#   HostName 34.224.95.251
#    User ubuntu
#    IdentityFile ~/.ssh/school
#    PasswordAuthentication no
