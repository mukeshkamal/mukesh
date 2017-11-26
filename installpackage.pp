package { 'httpd':
  ensure => installed,
  provider => 'yum'
}

service { 'httpd':
 ensure => 'running',
 enable => true 
}

file { '/var/www/html/index.html':
  ensure => 'present',
  content => "<h1>Hello Vodafone from scmGalaxy</h1>",
}
