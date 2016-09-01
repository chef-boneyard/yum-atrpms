require 'spec_helper'

describe 'yum-atrpms::default' do
  context 'yum-atrpms::default uses default attributes' do
    cached(:chef_run) do
      ChefSpec::ServerRunner.new do |node|
        node.normal['yum']['atrpms']['managed'] = true
        node.normal['yum']['atrpms-debuginfo']['managed'] = true
        node.normal['yum']['atrpms-source']['managed'] = true
        node.normal['yum']['atrpms-testing']['managed'] = true
        node.normal['yum']['atrpms-testing-debuginfo']['managed'] = true
        node.normal['yum']['atrpms-testing-source']['managed'] = true
        node.normal['yum']['atrpms-bleeding']['managed'] = true
        node.normal['yum']['atrpms-bleeding-debuginfo']['managed'] = true
        node.normal['yum']['atrpms-bleeding-source']['managed'] = true
      end.converge(described_recipe)
    end

    %w(
      atrpms
      atrpms-debuginfo
      atrpms-source
      atrpms-testing
      atrpms-testing-debuginfo
      atrpms-testing-source
      atrpms-bleeding
      atrpms-bleeding-debuginfo
      atrpms-bleeding-source
    ).each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(chef_run).to create_yum_repository(repo)
      end
    end
  end
end
