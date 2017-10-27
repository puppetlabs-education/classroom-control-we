class win_essentials::webperms {
  acl { 'C:/inetpub/wwwroot/':
    permissions => [
      { identity => '', rights => [''] },
    ],
  }
}
