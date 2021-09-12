file { "/home/selvaraj/devops.pp":
   ensure  => "present",
   owner   => "selvaraj",
   droup   => "selvaraj",
   mode    => "0777",
   content => "Hello, i am cloud and Devops Engineer!\n",
}
