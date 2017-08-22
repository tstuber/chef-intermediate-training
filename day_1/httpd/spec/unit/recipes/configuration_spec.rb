#
# Cookbook:: httpd
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'httpd::configuration' do
  context 'When all attributes are default, on an CentOS' do

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.7')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'html file is created' do
      expect(chef_run).to create_file('/var/www/html/index.html')
    end

    it 'html content contains a hello' do
      expect(chef_run).to render_file('/var/www/html/index.html').with_content('Welcome')
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

    it 'html file is created' do
      expect(chef_run).to create_file('/var/www/html/index.html')
    end

    it 'html content contains a hello' do
      expect(chef_run).to render_file('/var/www/html/index.html').with_content('Welcome')
    end
  end

end
