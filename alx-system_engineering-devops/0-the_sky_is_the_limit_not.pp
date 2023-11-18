# Increasing the max traffic that can be handled by nginx server

exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin'
}

# Restart Nginx server

exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
