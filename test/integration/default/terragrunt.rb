# frozen_string_literal: true

terragrunt_bin = '/usr/local/bin/terragrunt'

describe file(terragrunt_bin) do
  it { should exist }
  its('type') { should eq :file }
  it { should_not be_directory }
  it { should be_executable }
  # to get the latest sha you should download the zip archive and extract it
  # if needed you may have to install `coreutils` (package name for deb derivitives)
  # root@dokken:/# sha256sum /usr/local/bin/terragrunt/terragrunt
  # 00cc2e727e662fb81c789b2b8371d82d6be203ddc76c49232ed9c17b4980949a  /usr/local/bin/terragrunt/terragrunt
  its('sha256sum') { should eq '3b033389977ca6e7d10bad10514f22fa767c85b76db92befe83e67bafa2c8413' }
end

describe command("#{terragrunt_bin} --version") do
  its('stdout') { should match(/terragrunt\sversion\sv([0-9]+\.){2}[0-9+]/) }
  its('exit_status') { should eq 0 }
end
