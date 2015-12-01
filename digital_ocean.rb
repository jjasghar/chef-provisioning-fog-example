require 'chef/provisioning'

with_driver 'fog:DigitalOcean'

add_machine_options bootstrap_options: {
  image_distribution: 'Ubuntu',
  image_name: '15.04 x64',
  flavor_name: '512MB',
  region_name: 'London 1',
  key_name: 'private'
}

machine 'bowser' do
  tag 'loadbalancer'
end

websrvname = ['mario','luigi']

websrvname.each do |srv|
  machine_batch "#{srv}" do
    1.upto(1) do |n|
      instance = "#{name}-webserver-#{n}"
      machine instance do
        tag "#{name}-webserver"
        converge true
      end
    end
  end
end

machine 'yoshi' do
  tag 'database'
end
