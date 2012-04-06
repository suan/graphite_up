# Installs dependencies, graphite via pip, then configures it
require_recipe 'python'

include_recipe 'graphite::dependencies'
include_recipe 'graphite::graphite'
include_recipe 'graphite::configure'
include_recipe 'graphite::run'
