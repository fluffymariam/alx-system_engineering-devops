#!/usr/bin/env bash
# using pupp to connect w/o password

file { '/etc/ssh/ssh_config':
  ensure => present,
}

file_line { 'Turn off passwd auth':
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  match  => '^#PasswordAuthentication',
}

file_line { 'Delete identity file':
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school,
  match  => '^#IdentityFile',
}
