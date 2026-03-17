class level3
{
    registry_key { 'HKLM\Software\PuppetMaster':
        ensure => present,
    }

    registry_value { 'HKLM\Software\PuppetMaster\MissionStatus':
        ensure => present,
        type   => string,
        data   => 'Success',
    }
}