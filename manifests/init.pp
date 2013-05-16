# Public: Install and configure irssi from homebrew.
#
# Examples
#
#   include irssi
class irssi {
  include irssi::config

  package { 'irssi':
    provider  => homebrew,
  }

}
