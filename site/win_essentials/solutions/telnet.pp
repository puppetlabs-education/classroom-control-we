class win_essentials::telnet {
  dism { 'TelnetClient':
    ensure    => present,
    all       => true,
    norestart => true,
  }
}
