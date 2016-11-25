describe command('sudo yum -y install libbluray') do
  its('exit_status') { should eq 0 }
end
