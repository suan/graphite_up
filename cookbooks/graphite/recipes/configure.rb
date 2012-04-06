execute 'set-graphite-apache-config' do
  command "wget https://raw.github.com/tmm1/graphite/master/examples/example-graphite-vhost.conf -O /etc/apache2/sites-available/graphite"
  not_if "test -f /etc/apache2/sites-available/graphite"
end

execute 'create graphite.wsgi' do
  command 'cp /opt/graphite/conf/graphite.wsgi.example /opt/graphite/conf/graphite.wsgi'
  not_if 'test -f /opt/graphite/conf/graphite.wsgi'
end

execute 'create carbon.conf' do
  command 'cp /opt/graphite/conf/carbon.conf.example /opt/graphite/conf/carbon.conf'
  not_if 'test -f /opt/graphite/conf/carbon.conf'
end

execute 'create storage-schemas.conf' do
  command 'cp /opt/graphite/conf/storage-schemas.conf.example /opt/graphite/conf/storage-schemas.conf'
  not_if 'test -f /opt/graphite/conf/storage-schemas.conf'
end

execute 'setup Graphite django DB' do
  command 'cd /opt/graphite/webapp/graphite && sudo python manage.py syncdb'
end

execute 'set graphite/storage directory perms' do
  command 'chown -R www-data:www-data /opt/graphite/storage/'
end

execute 'use graphite vhost instead of default' do
  command '/usr/sbin/a2dissite default && /usr/sbin/a2ensite graphite'
end
