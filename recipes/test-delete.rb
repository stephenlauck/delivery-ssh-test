require 'chef/provisioning/ssh_driver'

with_driver 'ssh'

machine "ssh-test" do
  action :destroy
end