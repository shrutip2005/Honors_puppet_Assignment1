class level1
{
    file { 'C:/PuppetMission':
        ensure => directory,
    }

    file { 'C:/PuppetMission/hello.txt':
        ensure  => file,
        content => "Puppet was here at Shruti\n",
    }
}