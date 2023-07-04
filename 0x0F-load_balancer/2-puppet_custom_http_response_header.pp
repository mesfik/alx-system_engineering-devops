# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Create a custom Nginx configuration file
file { '/etc/nginx/conf.d/custom-header.conf':
  content => 'add_header X-Served-By $hostname;',
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
}

# Restart Nginx service
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/conf.d/custom-header.conf'],
}
