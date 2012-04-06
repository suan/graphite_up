execute 'set-graphite-apache-config' do
  command "wget https://raw.github.com/tmm1/graphite/master/examples/example-graphite-vhost.conf -O /etc/apache2/sites-available/graphite"
  not_if "test -f /etc/apache2/sites-available/graphite"
end

# execute '' do
# end
