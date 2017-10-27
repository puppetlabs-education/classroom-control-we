class win_essentials::processexplorer {
  # not best practices, but we'll take a shortcut and manage c:/temp in here
  # The zipfile doesn't create a directory, so we need to create it here.
	file { ['C:/temp', 'C:/temp/processexplorer']:
		ensure => directory,
    before => Staging::Deploy['processexplorer.zip'],
	}

	staging::deploy { 'processexplorer.zip':
		source  => '',                      # TODO
		target  => 'C:/temp/processexplorer',
		creates => 'C:/temp/processexplorer/procexp.exe',
	}

	file { "${::system32}/procexp.exe":
		ensure  => file,
		source  => '',                      # TODO
		require => Staging::Deploy['processexplorer.zip'],
	}
}
