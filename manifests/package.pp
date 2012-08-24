class dnsmasq::package {

  package {"Package for simple DNS management":
    name    => "dnsmasq",
  }

  file {"Directory for configuration auto include of simple DNS management":
    require => Package["Package for simple DNS management"],
    path    => "/etc/dnsmasq.d",
    ensure  => "directory",
    mode    => 0755,
    owner   => "root",
    group   => "root",
  }

  service {"dnsmasq":
    require => File["Directory for configuration auto include of simple DNS management"],
    ensure  => running,
    enable  => true,
  }

}