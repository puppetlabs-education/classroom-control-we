class win_essentials::netsend {
# from https://gallery.technet.microsoft.com/scriptcenter/Send-NetMessage-Net-Send-0459d235

  $message = ''
  $time    = '15'

  windowsfeature { ['RSAT-RemoteAccess', 'RSAT-AD-PowerShell']:
    ensure    => present,
    before    => Exec['pester everyone'],
  }

  exec { 'pester everyone':
    command   => template('win_essentials/sendall.ps1.erb'),
    provider  => powershell,
    logoutput => true,
  }

}
