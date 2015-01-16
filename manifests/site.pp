# Explictly set to avoid warning message
Package {
  allow_virtual => false,
}

package { 'epel-release':
}


node default {
  class { 'couchdb':
    bind        => '0.0.0.0',
    require => Package[epel-release]
  }
}
