
notify{'hello world' :}

file { '/opt/voda1.txt':
  ensure => 'present'
}

file { '/opt/voda2.txt':
  ensure => 'present',
  content => "This is my 2nd program",
}


file { '/opt/dir1':
  ensure => 'directory',
}


