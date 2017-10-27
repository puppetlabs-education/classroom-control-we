class win_essentials::uac {
	registry::value { "Disable_UAC":
	  key   => 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System',
	  value => 'EnableLUA',
	  type  => 'dword',
	  data  => '0x00000000',
	}

	reboot { 'after_disabling_uac':
	  message   => 'reboot since uac needs to be disabled',
	  apply     => 'finished',
	  timeout   => '10',
	  subscribe => Registry::Value['Disable_UAC']
	}
}
