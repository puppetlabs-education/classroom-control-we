class examples::essentials {

  file { 'C:/Users/Administrator/example.pp':
    ensure  => file,
    owner   => 'Administrator',
    group   => 'Administrator',
    mode    => '0664',
    content => epp('examples/example.epp'),
  }
  
}
