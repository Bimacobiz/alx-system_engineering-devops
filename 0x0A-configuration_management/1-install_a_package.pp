# install_flask.pp

package { 'python3-pip':
  ensure => installed,
}

package { 'Flask':
  ensure  => '2.1.0',
  require => Package['python3-pip'],
}

exec { 'install_flask':
  command     => '/usr/bin/pip3 install Flask==2.1.0',
  path        => '/usr/local/bin',
  refreshonly => true,
  creates     => '/usr/local/lib/python3.8/dist-packages/Flask-2.1.0.dist-info',
}
