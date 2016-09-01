name 'yum-atrpms'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and configures the atrpms Yum repository'
version '0.1.3'

depends 'yum', '~> 3.2'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/yum-atrpms' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/yum-atrpms/issues' if respond_to?(:issues_url)

chef_version '>= 11.0' if respond_to?(:chef_version)
