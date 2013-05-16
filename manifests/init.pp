# Public: Install and configure irssi from homebrew.
#
# Examples
#
#   include irssi
class irssi {
  require homebrew
  require irssi::config

#  file {
#    [
#      $irssi::config::configdir,
#      $irssi::config::logdir
#    ]:
#    ensure => directory
#  }

#  file { "${irssi::config::configdir}/config":
#    content   => template('irssi/config/irssi/config.erb'),
#    require   => File[$irssi::config::configdir]
#  }

  homebrew::formula { 'irssi':
    before => Package['boxen/brews/irssi'],
  }

  package { 'boxen/brews/irssi':
    ensure => '0.0.2a'
  }

}
