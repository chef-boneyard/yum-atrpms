name 'yum-atrpms'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and configures the atrpms Yum repository'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.1'
source_url 'https://github.com/chef-cookbooks/yum-atrpms' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/yum-atrpms/issues' if respond_to?(:issues_url)

depends 'yum', '~> 3.2'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end