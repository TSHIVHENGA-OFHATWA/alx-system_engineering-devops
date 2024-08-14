# fix the phpp extension in the wp-setting
exec { 'fix-wp-locale':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    =>  ['/bin', '/usr/bin']
}
