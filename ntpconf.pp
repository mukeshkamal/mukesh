$ntp_conf = '#Managed by Puppet server 13.126.21.65 iburst droftfile /var/lib/ntpd/drift'

file { '/opt/dir1/fff.txt':
  ensure => 'present',
  content => "This is my 2nd program",
}
