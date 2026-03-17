class level2
{
    service { 'Spooler':
        ensure => stopped,
        enable => false,
    }
}