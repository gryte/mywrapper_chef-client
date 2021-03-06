name 'mywrapper_chef-client'
maintainer 'Adam Linkous'
maintainer_email 'alinkous+support@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures mywrapper_chef-client'
long_description 'Installs/Configures mywrapper_chef-client'
version '1.0.1'
supports 'centos'
chef_version '>= 12.19' if respond_to?(:chef_version)
issues_url 'https://github.com/gryte/mywrapper_chef-client/issues'
source_url 'https://github.com/gryte/mywrapper_chef-client'

depends 'chef-client', '~> 11.3.0'
