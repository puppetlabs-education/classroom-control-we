class win_essentials::brackets {
  package { 'Brackets':
    ensure          => installed,
    provider        => 'windows',
    source          => '',
    install_options => [ '/passive' ]
  }
}
