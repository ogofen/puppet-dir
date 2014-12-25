class hypervisor_setup::vdsm-35 {
    file { '/etc/yum.repos.d/rhev.repo':
        owner   => root, group => root, mode => 644,
        ensure  => present,
        content => "[qa-latest]\nname=QA Latest build\nbaseurl=http://bob.eng.lab.tlv.redhat.com/builds/vt13.5/el$operatingsystemmajrelease/\nenabled=1\ngpgcheck=0\n",
        before  => Package['vdsm'],
    }
    package { 'vdsm':
        ensure => installed,
        allow_virtual => false,
    }
}
