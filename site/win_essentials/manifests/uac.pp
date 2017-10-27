class win_essentials::uac {
	registry::value { "Disable_UAC":
	  key   => '',
	  value => '',
	  type  => 'dword',
	  data  => '',
	}

	reboot { 'after_disabling_uac':
	  message   => 'reboot since uac needs to be disabled',
	  apply     => '',
	  timeout   => '10',
	  subscribe => ,
	}
}
