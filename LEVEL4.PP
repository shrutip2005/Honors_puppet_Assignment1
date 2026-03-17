class level4
{
    include chocolatey

    package { 'notepadplusplus':
        ensure   => installed,
        provider => chocolatey,
    }
}