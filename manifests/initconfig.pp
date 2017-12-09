class perfprobes::initconfig {

  $add_pkgs = [ 'epel-release', 'net-tools', 'elinks', ]
  package { $add_pkgs: ensure => present, }

  user { 'meadmin':
    ensure		=> 'present',
    comment		=> 'Common User',
    groups		=> ['wheel'],
    password		=> '$6$TDJ1V2NPvYPTOvg5$yzXGeJrIf1B8M.CrGIGEEZiDRJ5Y1wwPNOhNv75Dw1xRcznnZ7ZjGTbjAOUbILkPlw4zZzgwkPAxvEwN985xU1',
    password_max_age 	=> '-1',
    password_min_age	=> '-1',
    managehome		=> 'true',
    home			=> '/home/meadmin',
    shell			=> '/bin/bash',
  }

}
