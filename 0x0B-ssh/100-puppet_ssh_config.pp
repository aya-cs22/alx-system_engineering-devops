#Client configuration file (w/ Puppet)
file { '/home/user/.ssh/config':
  ensure  => present,
  owner   => 'user',
  group   => 'user',
  mode    => '0600',
  content => "
    Host 52.91.117.138
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
  ",
}
