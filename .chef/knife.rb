
current_dir = File.dirname(__FILE__)
log_level :info
log_location STDOUT

cache_options(path: "#{ENV['HOME']}/.chef/checksums")
cookbook_path ["#{current_dir}/../cookbooks"]


# You need to set these options for your OpenStack cloud
#
# :openstack_auth_url -> your authentication API endpoint
# :openstack_username -> the username that can provision on your cloud
# :openstack_api_key  -> your username password
# :openstack_tenant   -> your tenant ID

driver 'fog:OpenStack'
driver_options :compute_options => { :openstack_auth_url => 'http://SOMECLOUD:5000/v2.0/tokens',
                                     :openstack_username => 'admin',
                                     :openstack_api_key  => 'tGNhcEWaRzsGy2THISISFAKEzcnTwterg4wacyKkfAsK',
                                     :openstack_tenant   => 'admin' }
