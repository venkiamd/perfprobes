class perfprobes::config {
  
  file { 'SiriusHealthCheck log file':
    ensure => 'file',
    path   => '/var/log/SiriusHealthCheck',
    owner  => 'meadmin',
    group  => 'meadmin',
    mode   => '0644',
  }
  
  file { 'Monitoring scripts path':
    ensure => 'directory',
    path   => '/opt/scripts',
    owner  => 'meadmin',
    group  => 'meadmin',
    mode   => '0755',
  }
  
  file { 'SiriusHealthCheck bash script':
    ensure => 'file',
    path   => '/opt/scripts/SiriusHealthCheck.sh',
    source => 'puppet:///modules/perfprobes/SiriusHealthCheck.sh',
    owner  => 'meadmin',
    group  => 'meadmin',
    mode   => '0500',
  }
 
  cron { 'Cron job: SiriusHealthCheck.sh':
    command => '/opt/scripts/SiriusHealthCheck.sh',
    user    => 'meadmin',
    hour    => '*',
    minute  => '*',
  }

}
