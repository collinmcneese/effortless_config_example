# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'effortless_config_example'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list [
  'cb_effortless::default',
  'cb_effortless_yml::default',
]

# Specify a custom source for a single cookbook:
cookbook 'cb_effortless', path: '../cookbooks/cb_effortless'
cookbook 'cb_effortless_yml', path: '../cookbooks/cb_effortless_yml'
