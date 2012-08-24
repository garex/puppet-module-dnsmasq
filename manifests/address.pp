define dnsmasq::address ($names) {

  include dnsmasq::package

  file {"Adding DNS names for address $name":
    require => Service["dnsmasq"],
    notify  => Service["dnsmasq"],
    path    => "",
    content => template("dnsmasq/address.conf.erb")
  }

}