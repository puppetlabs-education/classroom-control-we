class win_essentials::webperms {
  acl { 'C:/inetpub/wwwroot/':
    permissions => [
      { identity => 'users', rights => ['read'] },
      { identity => 'jane',  rights => ['full'] },
    ],
  }
}
