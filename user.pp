user {'bob':
ensure => 'present',
managehome => true,
groups => ['sudo','users'],
password => pw_hash('password1','SHA-512','salt')
}
