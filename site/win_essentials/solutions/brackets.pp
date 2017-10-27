class win_essentials::brackets {
  package { 'Brackets':
    ensure          => installed,
    provider        => 'windows',
    source          => '//ADSERVER/installer/Brackets.msi',
    install_options => [ '/passive' ]
  }
}
