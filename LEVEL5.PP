class level5
{
    file { 'C:/PuppetMission/spec_report.txt':
        ensure  => file,
        content => "This machine is running ${facts['os']['name']} and has ${facts['memory']['system']['total']} of RAM.\n",
    }
}