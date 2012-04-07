# Installs dependencies, graphite via pip, then configures it
require_recipe 'nodejs'

cookbook_file '/tmp/statsd_0.0.2+nmu1_all.deb' do
  source 'statsd_0.0.2+nmu1_all.deb'
end

dpkg_package 'statsd' do
  source '/tmp/statsd_0.0.2+nmu1_all.deb'
end
