define dnsmasq::address ($names) {

  include dnsmasq::package

  $address = $name
  file {"Adding DNS names for address $address":
    require => File["Directory for DNS autoincludes"],
    notify  => Service["dnsmasq"],
    path    => "/etc/dnsmasq.d/address-$address.conf",
    content => template("dnsmasq/address.conf.erb")
  }

}