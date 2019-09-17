package {'ntp':
  ensure => installed,
}
-> file { '/etc/ntp.conf':
  ensure => file,
  mode   => '0600',
  source => '/vagrant/files/ntp.conf'
}
~> service {'ntp':
  ensure  => running,
  enable  => true,
}
