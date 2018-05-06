# test config recipe
config = if os.windows?
           'C:\chef\client.rb'
         else
           '/etc/chef/client.rb'
         end

describe command("ohai virtualization -c #{config}") do
  its(:exit_status) { should eq(0) }
end

# test systemd service recipe
describe processes('chef-client') do
  it { should exist }
end

describe service('chef-client') do
  it { should be_enabled }
  it { should be_installed }
  it { should be_running }
end
