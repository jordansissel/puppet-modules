# == Class: build_essential
#
# This will install the base development tools for multiple platforms.
#
class build_essential {
  case $operatingsystem {
    'CentOS': {
      package { ["gcc", "make"]:
        ensure => installed,
      }
    }

    'Ubuntu': {
      package {
        ["build-essential", "autoconf", "automake", "libtool"]:
          ensure => installed,
      }
    }
  }
}
