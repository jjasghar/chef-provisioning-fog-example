require 'chefspec'
require 'chefspec/berkshelf'

LOG_LEVEL = :fatal
UBUNTU_OPTS = {
  platform: 'ubuntu',
  version: '14.04',
  log_level: LOG_LEVEL
}

at_exit { ChefSpec::Coverage.report! }
