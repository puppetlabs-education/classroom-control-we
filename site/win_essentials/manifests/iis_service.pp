class win_essentials::iis_service {
  windowsfeature { 'Web-Webserver':
    ensure             => present,
    installsubfeatures => true,
  }

#   service { '':
#     ensure  => running,
#     enable  => true,
#     require => Windowsfeature['Web-Webserver'],
#   }
}
