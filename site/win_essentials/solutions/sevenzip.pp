class win_essentials::sevenzip {
  package { '7zip':
    ensure          => present,
    provider        => 'chocolatey',
  }
}
