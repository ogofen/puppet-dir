class vdsm::tools {
    vcsrepo { '/root/vdsm-tools':
        ensure   => present,
        provider => git,
        source   => "https://github.com/ogofen/vdsm-tools.git",
    }
	file { '/root/.zshrc':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/vdsm-tools/.zshrc',
	}
	file { '/root/vdsm.vim':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/vdsm-tools/vdsm.vim',
    }
	file { '/root/.monitor':
		owner => root, group => root, mode => 647,
        ensure => present,
        source => '/root/vdsm-tools/.monitor',
    }
}

