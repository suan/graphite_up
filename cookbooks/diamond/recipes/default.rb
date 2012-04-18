require_recipe 'python'

cookbook_file '/tmp/diamond_2.0.0_all.deb' do
  source 'diamond_2.0.0_all.deb'
end

dpkg_package 'diamond' do
  source '/tmp/diamond_2.0.0_all.deb'
  # notifies :restart, 'service[statsd]'
end

cookbook_file '/etc/diamond/diamond.conf' do
  source 'diamond.conf'
end

service 'diamond' do
  action [:enable, :start]
end
