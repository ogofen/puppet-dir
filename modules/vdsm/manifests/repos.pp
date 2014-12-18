class vdsm::repos {
    vcsrepo { '/root/vdsm-repos':
        ensure   => present,
        provider => git,
        source   => "https://github.com/ogofen/vdsm-$operatingsystemrelease-repos.git",
    }
   	file { '/etc/yum.repos.d/epel.repo':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/vdsm-repos/epel.repo',
	} 
   	file { '/etc/yum.repos.d/rhel-optional.repo':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/vdsm-repos/rhel-optional.repo',
	} 
   	file { '/etc/yum.repos.d/rhel-server.repo':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/vdsm-repos/rhel-server.repo',
	} 
   	file { '/etc/yum.repos.d/rhel-source.repo':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/vdsm-repos/rhel-source.repo',
	} 
 
    Exec {
        path => [
            '/usr/bin',
            '/bin',
            '/sbin',
            '/usr/local/sbin'],
        logoutput => true,
    }
    case $operatingsystemmajrelease {
        6: { 
               file { '/etc/yum.repos.d/rhev.repo':
                   owner => root, group => root, mode => 644,
                   ensure => present,
                   content => "[qa-latest]\nname=QA Latest build\nbaseurl=http://bob.eng.lab.tlv.redhat.com/builds/vt13.3/el6/\nenabled=1\ngpgcheck=0",
               }
               file { '/etc/yum.repos.d/rhel6.repo':
                   owner => root, group => root, mode => 644,
                   ensure => present,
                   source => '/root/vdsm-repos/rhel6.repo',
                }
           }
        7: {
               file { '/etc/yum.repos.d/rhev.repo':
                   owner => root, group => root, mode => 644,
                   ensure => present,
                   content =>"[qa-latest]\nname=QA Latest build\nbaseurl=http://bob.eng.lab.tlv.redhat.com/builds/vt13.3/el7/\nenabled=1\ngpgcheck=0", 
                }
                file { '/etc/yum.repos.d/rhel7.repo':
                    owner => root, group => root, mode => 644,
                    ensure => present,
                    source => '/root/vdsm-repos/rhel7.repo',
                }
            }
    }
}
