class win_essentials::webpage {
  file { '':
    ensure  => file,
    content => template('win_essentials/iisstart.htm.erb'),
  }
}
