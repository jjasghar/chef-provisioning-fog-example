require 'spec_helper'

describe 'demo-chef-provisioning::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  if os[:family] == 'redhat'

    describe package('vim-enhanced') do
      it { should be_installed }
    end

  elsif ['debian', 'ubuntu'].include?(os[:family])

    describe package('vim') do
      it { should be_installed }
    end

    describe package('build-essential') do
      it { should be_installed }
    end

  end
end
