class win_essentials::webpage {
  file { 'C:/inetpub/wwwroot/iisstart.htm':
    ensure  => file,
    content => template('win_essentials/iisstart.htm.erb'),
  }
}
