class win_essentials::telnet {
  dism { '':
    ensure    => present,
    all       => true,
  }
}
