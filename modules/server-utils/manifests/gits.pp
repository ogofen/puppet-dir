class server-utils::gits {
    vcsrepo { '/root/oh-my-zsh':
        ensure   => present,
        provider => git,
        source   => "https://github.com/robbyrussell/oh-my-zsh.git",
    }
    vcsrepo { '/root/pudb':
        ensure   => present,
        provider => git,
        source   => "http://git.tiker.net/trees/pudb.git",
    }
}
