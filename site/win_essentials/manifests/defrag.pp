class win_essentials::defrag {

  scheduled_task { 'defrag C':
    ensure    => present,
    enabled   => true,
    command   => 'C:\windows\system32\defrag.exe',
    arguments => 'C:',
    trigger   => {
      schedule    => 'weekly',
      start_time  => '01:00',
    }
  }
}
