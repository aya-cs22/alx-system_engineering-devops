file { '/home/user/.ssh/config':
  ensure  => present,
  owner   => 'user',
  group   => 'user',
  mode    => '0600',
  content => "
    Host your_server_ip
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
  ",
}
