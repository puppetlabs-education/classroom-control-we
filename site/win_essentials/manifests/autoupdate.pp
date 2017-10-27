class win_essentials::autoupdate {
  # Download and install updates
  # Install updates on Tuesday at 0200
  # Do not restart if users are logged in.
  class { 'windows_autoupdate':
    no_auto_update                      => '',
    au_options                          => '',
    scheduled_install_day               => '3',
    scheduled_install_time              => '2',
    no_auto_reboot_with_logged_on_users => '1',
  }
}
