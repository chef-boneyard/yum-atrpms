name 'yum-atrpms'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and configures the atrpms Yum repository'
version '1.0.0'

depends 'compat_resource', '>= 12.14.6'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/yum-atrpms'
issues_url 'https://github.com/chef-cookbooks/yum-atrpms/issues'
chef_version '>= 12.1'
