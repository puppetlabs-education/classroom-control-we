class win_essentials::users {
  # ensure that a local user called jane exists
  # with OS defaults for all attributes except password.
  user { 'jane':
    ensure   => ,
    password => '',
  }

  # In addition to the local Adminstrator user, 
  # both jane as well as user admin from the CLASSROOM domain
  # should be members of the Administrators group.
  group { 'administrators':
    ensure  => present,
    members => [ 'administrator', '', '' ]
  }
}
