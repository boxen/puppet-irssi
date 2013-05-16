# Internal: Configuration settings for irssi
#
# Examples
#
#   include irssi::config
class irssi::config {
  require boxen::config

  $configdir   = "${boxen::config::configdir}/irssi"
#  $configfile  = "${configdir}/config"
#  $executable  = "${boxen::config::homebrewdir}/bin/irssi"
#  $logdir      = "${boxen::config::logdir}/irssi"
#  $consolefile = "${logdir}/console.log"
}
