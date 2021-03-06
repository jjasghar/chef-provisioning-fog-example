require 'chef/provisioning'

with_machine_options({
                       :bootstrap_options => {
                         :flavor_ref  => 3,
                         :image_ref => '741b48c5-3575-4e91-a3ee-0c1f2c38432b',
                         :nics => [{ :net_id => '8fc162c0-311e-4006-ba81-89afddb9db6c'}],
                         :key_name => 'jdizzle',
                         :floating_ip_pool => 'ext-net'
                       },
                       :ssh_username => 'ubuntu'
                     })

machine_batch 'dev' do
  1.upto(3) do |n|
    instance = "#{name}-webserver-#{n}"
    machine instance do
      tag "#{name}-webserver-#{n}"
      recipe 'demo-chef-provisioning::default'
      converge true
    end
  end
end
