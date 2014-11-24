# Class icinga
#
# setup icinga
# full docs in README.md

class icinga {
  anchor{'icinga::begin':} ->
  class{'icinga::params':} ->
  class{'icinga::install':} ->
  class{'icinga::users':} ->
  class{'icinga::idoconfig':} ~>
  class{'icinga::idoservice':} ->
  class{'icinga::config':} ~>
  class{'icinga::service':} ->
  anchor{'icinga::end':} ->

  if ( $icinga::params::gui_type =~ /^(classic|web|both)$/ ) {
    contain icinga::gui
  } else {
    notice('no gui selected')
  }
  if ( $icinga::params::perfdata == true and $icinga::params::perfdatatype =~ /^pnp4nagios$/ ) {
    contain pnp4nagios
  }
}
