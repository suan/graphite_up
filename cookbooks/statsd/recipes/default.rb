# Installs dependencies, graphite via pip, then configures it
require_recipe 'nodejs'

# statsd init script expects this to be present
link '/usr/bin/node' do
  to '/usr/local/bin/node'
end

cookbook_file '/tmp/statsd_0.0.2+nmu1_all.deb' do
  source 'statsd_0.0.2+nmu1_all.deb'
end

dpkg_package 'statsd' do
  source '/tmp/statsd_0.0.2+nmu1_all.deb'
  # notifies :restart, 'service[statsd]'
end

service 'statsd' do
  action [:enable, :start]
end
