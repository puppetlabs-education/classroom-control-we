class win_essentials::domain {
  $domain_name = ''
  $ad_username = ''
  $ad_password = ''

# Using https://forge.puppet.com/trlinkin/domain_membership
  class { 'domain_membership':
    domain       => $domain_name,
    username     => $ad_username,
    password     => $ad_password,
    join_options => '3',
    notify       => Reboot['after joining domain'],
  }

  reboot { 'after joining domain':
    message   => 'reboot after joining domain',
    apply     => 'finished',
    timeout   => '10',
  }

}
