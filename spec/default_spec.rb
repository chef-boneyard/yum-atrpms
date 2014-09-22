require 'spec_helper'

describe 'yum-atrpms::default' do
  context 'yum-atrpms::default uses default attributes' do
    let(:chef_run) do
      ChefSpec::Runner.new do |node|
        node.set['yum']['atrpms']['managed'] = true
        node.set['yum']['atrpms-debuginfo']['managed'] = true
        node.set['yum']['atrpms-source']['managed'] = true
        node.set['yum']['atrpms-testing']['managed'] = true
        node.set['yum']['atrpms-testing-debuginfo']['managed'] = true
        node.set['yum']['atrpms-testing-source']['managed'] = true
        node.set['yum']['atrpms-bleeding']['managed'] = true
        node.set['yum']['atrpms-bleeding-debuginfo']['managed'] = true
        node.set['yum']['atrpms-bleeding-source']['managed'] = true
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
