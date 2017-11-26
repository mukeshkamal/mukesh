package { 'httpd':
  ensure => absent,
  provider => 'yum'
}


if $facts['os']['family'] == 'RedHat'{
  
	package { 'httpd':
  		ensure => installed,
  		provider => 'yum'
  
	}

	service { 'HTTPD_Service':
 			ensure => 'running',
 			enable => true
		}

	file { '/var/www/html/index.html':
  		ensure => 'present',
  		content => "<h1>Hello Vodafone from Mukesh</h1>",
  		notify  => HTTPD_Service
	}

}
