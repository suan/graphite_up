# Installs required packages for graphite to be installed via pip

%w[python-cairo python-django python-django-tagging libapache2-mod-wsgi python-twisted python-memcache python-pysqlite2 python-simplejson].each{ |package_name| package package_name }
