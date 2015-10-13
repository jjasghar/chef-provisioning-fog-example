#
# Cookbook Name:: demo-chef-provisioning
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'demo-chef-provisioning::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should install the vim package' do
      expect(chef_run).to install_package('vim')
    end
  end

  context 'when ubuntu or debian is specified' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(UBUNTU_OPTS)
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should install the vim package' do
      expect(chef_run).to install_package('build-essential')
    end

    it 'should install the vim package' do
      expect(chef_run).to install_package('vim')
    end

    it 'should execute apt get update' do
      expect(chef_run).to run_execute('apt-get update')
    end

  end
end
