# Public: Install igure irssi from homebrew.
#
# Examples
#
#   include irssi
class irssi {
  include homebrew

  package { 'irssi':
    provider => homebrew,
  }
}
