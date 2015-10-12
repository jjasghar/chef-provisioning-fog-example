# chef-provisioning-fog-example

## Scope

This is an example repo to leverage [chef-provisioning-fog](https://github.com/chef/chef-provisioning-fog/). Basically you can drop the cookbooks you want to use in `cookbooks/` directory and run the `chef-client` provisioning command and you'll bootstrap your boxes. This should be everything you need to get started.

## Usage

1. Copy/download whatever you want in the `cookbooks/` directory. (there is an example cookbook already there.
1. Edit the [.chef/knife.rb](.chef/knife.rb) for your settings. Including the recipes that you want to run.
1. Run `chef-client -z demo.rb` or if you've renamed the file that file name.
1. When you're done, you can use the `chef-client -z destroy.rb` to blow everything away.
1. Edit/save this for what you want, this should be enough to bootstrap you now :D.

## Settings

| Setting        | Notes           |
| ------------- |------------- |
| `:openstack_auth_url` | your authentication API endpoint |
| `:openstack_username` | the username that can provision on your cloud |
| `:openstack_api_key`  | your username password |
| `:openstack_tenant`   | your tenant ID |
