# frozen_string_literal: true

terraform_bin = '/usr/local/bin/terraform/terraform'

describe file(terraform_bin) do
  it { should exist }
  its('type') { should eq :file }
  it { should_not be_directory }
  it { should be_executable }
  # to get the latest sha you should download the zip archive and extract it
  # if needed you may have to install `coreutils` (package name for deb derivitives)
  # root@dokken:/# sha256sum /usr/local/bin/terraform/terraform
  # 00cc2e727e662fb81c789b2b8371d82d6be203ddc76c49232ed9c17b4980949a  /usr/local/bin/terraform/terraform
  its('sha256sum') { should eq '00cc2e727e662fb81c789b2b8371d82d6be203ddc76c49232ed9c17b4980949a' }
end

describe command("#{terraform_bin} --version") do
  its('stdout') { should match(/(Terraform)\sv([0-9]+\.){2}[0-9+]/) }
  its('exit_status') { should eq 0 }
end
