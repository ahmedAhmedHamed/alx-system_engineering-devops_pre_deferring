# Installing Nginx web server w Puppet
include stdlib

$required_link = 'https://www.youtube.com/watch?v=QH2-TGUlwu4'
$full_content = "\trewrite ^/redirect_me/$ ${link} permanent;"

exec { 'restart nginx':
  command => '/usr/sbin/service nginx restart',
  require => Package['nginx']
}

file_line { 'Set 301 redirection':
  ensure   => 'present',
  after    => 'server_name\ _;',
  path     => '/etc/nginx/sites-available/default',
  multiple => true,
  line     => $full_content,
  notify   => Exec['restart nginx'],
  require  => File['/var/www/html/index.html']
}

package { 'nginx':
  ensure  => 'installed',
  require => Exec['update packages']
}

file { '/var/www/html/index.html':
  ensure  => 'present',
  content => 'Hello World!',
  mode    => '0644',
  owner   => 'root',
  group   => 'root'
}

exec { 'update packages':
  command => '/usr/bin/apt-get update'
}

