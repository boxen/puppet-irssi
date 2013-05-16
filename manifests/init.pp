# Public: Install and configure irssi from homebrew.
#
# Examples
#
#   include irssi
class irssi {
  include irssi::config
  require irssi::server
  require irssi::user
  require homebrew

  file { [
    $irssi::config::configdir,
    $irssi::config::logdir
  ]:
    ensure => directory
  }

  file { $irssi::config::configfile:
    content => template('irssi/config/irssi/config.erb'),
    notify  => Service['dev.irssi']
  }

  homebrew::formula { 'irssi':
    before => Package['boxen/brews/irssi'],
  }

  package { 'boxen/brews/irssi':
    ensure => $irssi::config::version
  }

}
