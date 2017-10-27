class win_essentials::iis_service {
  windowsfeature { 'Web-Webserver':
    ensure             => present,
    installsubfeatures => true,
  }

  windowsfeature { 'Web-Mgmt-Tools':
    ensure             => present,
    installsubfeatures => true,
  }

  service { 'w3svc':
    ensure  => running,
    enable  => true,
    require => Windowsfeature['Web-Webserver'],
  }
}
