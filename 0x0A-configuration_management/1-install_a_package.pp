#Using Puppet, install python3 from pip3.
package{'python3':
    ensure    => '3.8.10',
    provider => 'pip3',  
}
#Using Puppet, install flask from pip3.
package{'flask':
    ensure    => '2.1.0',
    provider => 'pip3',
    require   => Package['python3'],
}
#Using Puppet, install Werkzeug from pip3.
package{'Werkzeug':
    ensure    => '2.1.0',
    provider => 'pip3',
    require   => Package['python3'],
}
