#Manages classes via Puppet

class nginx {
package {'nginx':
ensure => installed,
}
service {'nginx':
ensure => running,
enabled => true,
require => Package['nginx'],
}
file {'/var/www/cat-pictures/index.html':
content => "I can haz a cat picture?\n",
}
file {'/etc/nginx/sites-enabled/default':
source => 'puppet:///modules/nginx/cat-pictures.conf',
notify => Service['nginx'],
}
}
