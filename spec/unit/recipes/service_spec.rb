#
# Cookbook:: httpd
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'httpd::service' do
  context 'When all attributes are default, on an CentOS' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.7')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end


    it 'starts the httpd service' do
      expect(chef_run).to start_service('httpd')
    end

    it 'enables the httpd service' do
      expect(chef_run).to enable_service('httpd')
    end
  end

  context 'When all attributes are default, on an Ubuntu 14.04' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '14.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end


    it 'starts the httpd service' do
      expect(chef_run).to start_service('apache2')
    end

    it 'enables the httpd service' do
      expect(chef_run).to enable_service('apache2')
    end
  end

end
