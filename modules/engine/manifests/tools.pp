class engine::tools {
    vcsrepo { '/root/engine-tools':
        ensure   => present,
        provider => git,
        source   => "https://github.com/ogofen/engine-tools.git",
        require  => Package['git'],
        before   => File['/root/.zshrc','/root/.monitor','/root/log.vim'],
    }
	file { '/root/.zshrc':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/engine-tools/.zshrc',
	}
	file { '/root/.bashrc':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/engine-tools/.bashrc',
	}
    file { '/root/config.setup':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => 'puppet:///modules/engine/config.setup'
	}
    file { '/root/isSetupNeeded.sh':
		owner => root, group => root, mode => 755,
        ensure => present,
        source => 'puppet:///modules/engine/isSetupNeeded.sh'
	}
	file { '/root/log.vim':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/engine-tools/log.vim',
    }
	file { '/root/.monitor':
		owner => root, group => root, mode => 647,
        ensure => present,
        source => '/root/engine-tools/.monitor',
    }
}
