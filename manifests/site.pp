node 'ovirt-gofen-2.scl.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include engine
    include server-action::latest
    include server-action::engine::setup
}
node 'ovirt-gofen-1.scl.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include engine
    include server-action::latest
    include server-action::engine::setup
}
node 'purple-vds1.qa.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include vdsm
    include server-action::latest
    include server-action::hypervisor::install
    include server-action::hypervisor::clean
}
node 'purple-vds2.qa.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include vdsm
    include server-action::latest
    include server-action::hypervisor::install
    include server-action::hypervisor::clean  
}
node 'purple-vds3.qa.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include vdsm
    include server-action::latest
    include server-action::hypervisor::install
    include server-action::hypervisor::clean
}
node 'adder.tlv.redhat.com' {
    include server-utils
    include vim
    include vdsm
    include server-action::latest
    include server-action::hypervisor::install
    include server-action::hypervisor::clean
}
node 'dhcp-2-53.tlv.redhat.com' {
    include server-utils
    include vim
    include vdsm
    include server-action::latest
    include server-action::hypervisor::install
    include server-action::hypervisor::clean
}
node 'redundant-2.qa.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include engine
}
node 'redundant-1.qa.lab.tlv.redhat.com' {
    include server-utils
    include vim
    include engine
    include server-action::latest
    include server-action::engine::setup
}
