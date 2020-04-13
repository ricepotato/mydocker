file { '/home/ricepotato/test.txt':
  ensure => 'present',
  content => 'test'
}
