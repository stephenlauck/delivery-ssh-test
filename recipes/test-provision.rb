require 'chef/provisioning/ssh_driver'

with_driver 'ssh'

machine "ssh-test" do
  # action :destroy
  action [:ready, :setup, :converge]
  machine_options :transport_options => {
    :ip_address => '33.33.33.10',
    :username => 'vagrant',
    :ssh_options => {
      :password => 'vagrant'
    }
  }
  recipe 'delivery-ssh-test::default'
  converge true
end