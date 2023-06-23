# Create a file /tmp/school
file { '/tmp/school':
  ensure  => present,
  path    => '/tmp/school'
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0774',
  content => 'I love Puppet',
}
