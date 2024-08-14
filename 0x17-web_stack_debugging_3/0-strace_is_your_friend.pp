# web-stack debugging-3 script in puppet
file_line { 'fix-wp-locale':
  path  => '/var/www/html/wp-settings.php',
  match => 'class-wp-locale.phpp',
  line  => 'require_once( ABSPATH . WPINC . \'/class-wp-locale.php\' );',
}
