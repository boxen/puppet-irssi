# Configure your irssi user
#
# Usage:
#
#   class { 'irssi::user': nick => 'nerdguy007' }
#
#class irssi::user($nick = undef) {
#  include irssi::config
#
#  $user_nick = $nick ? {
#    undef    => 'irssi-user',
#    default  => $nick
#  }
#}
