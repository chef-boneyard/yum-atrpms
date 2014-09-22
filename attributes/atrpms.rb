case node['platform_family']
when 'rhel'
  default['yum']['atrpms']['repositoryid'] = 'atrpms'
  default['yum']['atrpms']['description'] = 'Red Hat Enterprise Linux $releasever - $basearch - ATrpms'
  default['yum']['atrpms']['baseurl'] = 'http://dl.atrpms.net/el$releasever-$basearch/atrpms/stable'
  default['yum']['atrpms']['gpgkey'] = 'http://ATrpms.net/RPM-GPG-KEY.atrpms'
  default['yum']['atrpms']['failovermethod'] = 'priority'
  default['yum']['atrpms']['gpgcheck'] = true
  default['yum']['atrpms']['enabled'] = true
  default['yum']['atrpms']['managed'] = true
when 'fedora'
  default['yum']['atrpms']['repositoryid'] = 'atrpms'
  default['yum']['atrpms']['description'] = 'Fedora Core $releasever - $basearch - ATrpms'
  default['yum']['atrpms']['baseurl'] = 'http://dl.atrpms.net/f$releasever-$basearch/atrpms/stable'
  default['yum']['atrpms']['gpgkey'] = 'http://ATrpms.net/RPM-GPG-KEY.atrpms'
  default['yum']['atrpms']['failovermethod'] = 'priority'
  default['yum']['atrpms']['gpgcheck'] = true
  default['yum']['atrpms']['enabled'] = true
  default['yum']['atrpms']['managed'] = true
end
