# Using Puppet, install pip3.
package{'pip3':
    ensure    => installed,
}

# Ensure Python3 is installed.
package{'python3':
    ensure    => installed,
}
# Using Puppet, install flask from pip3.
package{'flask':
    ensure    => 'present',
    provider => 'pip3',  
    require   => ['Package[python3]'],
}
# Ensure Werkzeug is installed with a compatible version.
package{'Werkzeug':
    ensure    => '2.1.1',
    provider => 'pip3',  
    require   => ['Package[python3]'],
}
