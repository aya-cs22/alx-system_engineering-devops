# Using Puppet to install flask from pip3.
# check python 3 is installed
package {'python3':
    ensure   => present,
}

# Check pip3 is installed
package {'python3-pip':
    ensure => present
}

# install flask
package {'flask':
    ensure   =>'2.1.0',
    name     =>'flask',
    provider =>'pip'
}

# install werkzeug
package {'werkzeug':
    ensure   =>'2.1.1',
    provider =>'pip'
}
