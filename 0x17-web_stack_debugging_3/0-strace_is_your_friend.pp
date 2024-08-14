# fix the phpp extension in the wp-setting
exec { 'fix-wp-locale':
  command => "sed -i 's/class-wp-locale.phpp/class-wp-locale.php/' /var/www/html/wp-settings.php"
  path    =>  ['/bin', '/usr/local/bin']
}
