class engine::setup {
    package { 'rhevm':
        ensure => installed,
        allow_virtual => false,
    }
#    Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
#    exec { 'setup': 
#        #require => File[$my_file_arg],
#        command => "engine-setup --config=/root/config.setup",
#        onlyif => "/root/isSetupNeeded.sh",
#    }
}
