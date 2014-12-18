class engine{
    vcsrepo { '/root/engine-tools':
        ensure   => present,
        provider => git,
        source   => "https://github.com/ogofen/engine-tools.git
        ",
    }
	file { '/root/.zshrc':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/engine-tools/.zshrc',
	}
	file { '/root/log.vim':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/engine-tools/log.vim',
    }
	file { '/root/.monitor':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/engine-tools/.monitor',
    }

}
node 'dhcp-2-51.tlv.redhat.com' {
    include vim
    include vdsm
    include server-utils
}
node 'rat.tlv.redhat.com' {
    include vim
    include vdsm
    include server-utils
}
node 'purple-vds1.qa.lab.tlv.redhat.com' {
    include vim
    include vdsm
    include server-utils
}
node 'purple-vds2.qa.lab.tlv.redhat.com' {
    include vim
    include vdsm
    include server-utils
}
node 'purple-vds3.qa.lab.tlv.redhat.com' {
    include vim
    include vdsm
    include server-utils
}
