class dnsmasq::package {

  package {"Package for simple DNS management":
    name    => "dnsmasq",
  }

  file {"Directory for DNS autoincludes":
    require => Package["Package for simple DNS management"],
    path    => "/etc/dnsmasq.d",
    ensure  => "directory",
    mode    => 0755,
    recurse => true,
    purge   => true,    
    owner   => "root",
    group   => "root",
  }

  service {"dnsmasq":
    require => File["Directory for DNS autoincludes"],
    ensure  => running,
    enable  => true,
  }

}