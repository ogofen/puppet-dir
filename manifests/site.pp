node 'ovirt-gofen-2.scl.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include engine
    include vdsm::rhevrepo
}
node 'ovirt-gofen-1.scl.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include engine
    include vdsm::rhevrepo
}
node 'purple-vds1.qa.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include vdsm
    include hypervisor_setup
}
node 'purple-vds2.qa.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include vdsm
}
node 'purple-vds3.qa.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include vdsm
}
node 'dhcp-2-51.tlv.redhat.com' {
    include server-utils
    include vim
    include engine 
}
node 'dhcp-2-53.tlv.redhat.com' {
    include server-utils
    include vim
    include vdsm
}
node 'redundant-2.qa.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include vdsm 
    include rhevm_ini::vdsm-35
}
node 'leonid-vdc.qa.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include engine 
    include vdsm::rhevrepo
}
