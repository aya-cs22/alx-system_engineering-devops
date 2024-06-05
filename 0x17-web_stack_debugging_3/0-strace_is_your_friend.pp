#s/: The beginning of the search and replace expression.
#phpp: The word being searched for.
#php: The word to be replaced with.
#g: A flag indicating the replacement of all matching cases, not just the first one
#These paths are intended to ensure that the sed tool is found and executed correctly on different operating systems.
exec { 'replace_phpp':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => ['/bin', '/usr/bin/', '/usr/loca/bin/'],
}
