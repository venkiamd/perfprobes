class perfprobes::install {

  package{'Java-8u73':
            provider => 'rpm',
            ensure => 'installed',
            name  => 'jdk1.8.0_73-1.8.0_73-fcs.x86_64',
	    source => 'https://mirror.its.sfu.ca/mirror/CentOS-Third-Party/NSG/common/x86_64/jdk-8u73-linux-x64.rpm',
            #source => '/tmp/jdk-8u73-linux-x64.rpm',
            #require => File['/tmp/jdk-8u73-linux-x64.rpm'],
           }

  #file { '/tmp/jdk-8u73-linux-x64.rpm':
                 # source => "puppet:///modules/perfprobes/jdk-8u73-linux-x64.rpm"
      # }
}

