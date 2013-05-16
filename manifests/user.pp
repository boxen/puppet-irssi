# Configure your irssi user
#
# Usage:
#
#   class { 'irssi::user': nick => 'nerdguy007' }

define irssi::user($nick = undef) {
  $user_nick = $nick ? {
    undef    => 'irssi-user',
    default  => $nick
  }
}
