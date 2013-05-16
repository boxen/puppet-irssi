# Add a server to chat on
# If options are not set, use Freenode without SSL
#
# Usage:
#
#   class { 'irssi::server':
#     address => 'irc.freenode.net',
#     chatnet => 'freenode',
#     port    => '6667',
#     use_ssl => 'no',
#     ssl_verify => 'no',
#     ssl_capath => '',
#     autoconnect => 'yes'
#  }
#
#
#define irssi::server($address = undef, $chatnet = undef, $port = undef, $use_ssl = undef, $ssl_verify = undef, $ssl_capath = undef, $autoconnect = undef) {
#  include irssi::config
#
#  $server_addr = $address ? {
#    undef       => 'irc.freenode.net',
#    default     => $address
#  }
#
#  $server_net = $chatnet ? {
#    undef       => 'freenode',
#    default     => $chatnet
#  }
#
#  $server_port = $port ? {
#    undef       => 6667,
#    default     => $port
#  }
#
#  $server_use_ssl = $use_ssl ? {
#    undef       => 'no',
#    default     => $use_ssl
#  }
#
#  $server_ssl_verify = $ssl_verify ? {
#    undef       => 'no',
#    default     => $ssl_verify
#  }
#
#  $server_ssl_capath = $ssl_capath ? {
#    undef       => '/etc/ssl/certs/',
#    default     => $ssl_capath
#  }
#
#  $server_autoconnect = $autoconnect ? {
#    undef       => 'yes',
#    default     => $autoconnect
#  }
#
#}
