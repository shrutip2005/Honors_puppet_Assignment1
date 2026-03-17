class boss
{
    windowsfeature { 'IIS':
        ensure => present,
        name   => 'Web-Server',
    }

    file { 'C:/inetpub/wwwroot/index.html':
        ensure  => file,
        content => "<h1>Welcome to My Puppet Managed Website</h1>",
    }

    service { 'W3SVC':
        ensure => running,
        enable => true,
    }
}