node default {

  # Level 1: Digital Fingerprint
  file { 'C:/PuppetMission':
    ensure => directory,
  }

  file { 'C:/PuppetMission/hello.txt':
    ensure  => file,
    content => 'Puppet was here at Shruti',
    require => File['C:/PuppetMission'],
  }

  # Level 2: Service Lock
  service { 'Spooler':
    ensure => stopped,
    enable => false,
  }

  # Level 3: Secret Agent Registry
  registry_key { 'HKLM\Software\PuppetMaster':
    ensure => present,
  }

  registry_value { 'HKLM\Software\PuppetMaster\MissionStatus':
    ensure  => present,
    type    => string,
    data    => 'Success',
    require => Registry_key['HKLM\Software\PuppetMaster'],
  }

  # Level 4: Silent Installer
  include chocolatey

  package { 'notepadplusplus':
    ensure   => installed,
    provider => chocolatey,
    require  => Class['chocolatey'],
  }

  # Level 5: Identity Report
  file { 'C:/PuppetMission/spec_report.txt':
    ensure  => file,
    content => "This machine is running ${facts['os']['name']} ${facts['os']['release']['full']} and has ${facts['memory']['system']['total']} of RAM.",
  }

  # Boss Level: Self-Healing Website
  windowsfeature { 'IIS':
    ensure => present,
    name   => 'Web-Server',
  }

  file { 'C:/inetpub/wwwroot/index.html':
    ensure  => file,
    content => '<h1>Welcome to Shruti Puppet Self-Healing Website</h1><p>Managed by Puppet!</p>',
    require => Windowsfeature['IIS'],
  }

  service { 'W3SVC':
    ensure  => running,
    enable  => true,
    require => Windowsfeature['IIS'],
  }
}