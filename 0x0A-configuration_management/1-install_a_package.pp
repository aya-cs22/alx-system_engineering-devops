# Ensure Python3 is installed.
package{'python3':
    ensure    => '3.8.10',
}

# Ensure pip3 is installed.
package{'python3-pip':
    ensure    => installed,
}

# Using Puppet, install flask from pip3.
package{'flask':
    ensure    => 'present',
    provider => 'pip3',  
    require   => ['Package[python3]', 'Package[python3-pip]'],
}

# Ensure Werkzeug is installed with a compatible version.
package{'Werkzeug':
    ensure    => '2.1.1',
    provider => 'pip3',  
    require   => ['Package[python3]', 'Package[python3-pip]'],
}
