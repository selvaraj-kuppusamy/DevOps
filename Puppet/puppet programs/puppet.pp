file { "/var/tmp/kec"
  ensure => "directory",
}

file { "/var/tmp/kec/software.go"
  ensure => "present"
}

