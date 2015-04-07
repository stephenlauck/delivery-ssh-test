require 'chef/provisioning/ssh_driver'

with_driver 'ssh'

# with_machine_options  :transport_options => {
#         'is_windows' => false,
#         'ip_address' => '33.33.33.10',
#         'host' => 'default-10.example.com',
#         'username' => 'vagrant',
#         'ssh_options' => {
#             'auth_methods' => '', 
#             'bind_address' => '',
#             'compression' => '',
#             'compression_level' => '',
#             'config' => '',
#             'encryption' => '',
#             'forward_agent' => '',
#             'hmac' => '',
#             'host_key' => '',
#             'keepalive' => '',
#             'keepalive_interval' => '',
#             'kex' => '',
#             'keys' => ['/home/username/.vagrant.d/insecure_private_key'],
#             'key_data' => '',
#             'languages' => '',
#             'logger' => '',
#             'paranoid' => '',
#             'password' => '',
#             'port' => '',
#             'proxy' => '',
#             'rekey_blocks_limit' => '',
#             'rekey_limit' => '',
#             'rekey_packet_limit' => '',
#             'timeout' => '',
#             'verbose' => '',
#             'global_known_hosts_file' => '',
#             'user_known_hosts_file' => '',
#             'host_key_alias' => '',
#             'host_name' => '',
#             'user' => '',
#             'properties' => '',
#             'passphrase' => '',
#             'keys_only' => '',
#             'max_pkt_size' => '',
#             'max_win_size, :send_env' => '',
#             'use_agent' => ''
#         },
#         'options' => {
#           'prefix' => 'sudo ',
#           'ssh_pty_enable' => false,
#           'ssh_gateway' => 'yourgateway'
#         }
#       }

machine "ssh" do
  action [:ready, :setup, :converge]
  machine_options :transport_options => {
    'ip_address' => '33.33.33.10',
    'username' => 'vagrant',
    'ssh_options' => {
      'password' => 'vagrant'
    }
  }
  recipe 'delivery-test-ssh::default'
  converge true
end
