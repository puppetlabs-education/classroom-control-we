class win_essentials::users {
  # ensure that a local user called jane exists
  # with OS defaults for all attributes except password.
  user { 'jane':
    ensure   => present,
    password => '4puppetLabs', # note that on Unix, this would be encrypted.
  }

  # both jane as well as user admin from the CLASSROOM domain
  # should be members of the Administrators group.
  group { 'administrators':
    ensure  => present,
    members => [ 'administrator', 'CLASSROOM\admin' , 'jane' ]
  }
}
