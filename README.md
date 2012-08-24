# Puppet module for simple local DNS management 

Uses dnsmasq as a simple DNS server and allows to manage local-only DNS-names.

## Description

For example you need many local-only names for a few local machines, say:
 * 192.168.100.10
 * 192.168.100.20
 * 192.168.100.30

You can add to each many names/aliases, that will be managed by dnsmasq, when DNS-request will come to it.

## Usage

Call this define by the number of your needed-to-name machines:

```ruby
dnsmasq::address {
  "192.168.100.10": names => ["ten.loc", "printer.loc", "cool.loc"];
  "192.168.100.20": names => ["twenty.inn"];
  "192.168.100.30": names => ["secret.bla"];
}
```

*Just call this define (-s) all other will be included magically.*

## GOODTODO

* Add more features -- not only simple address translation
