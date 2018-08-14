# frozen_string_literal: true

atlantis_bin = '/usr/local/bin/atalantis'

describe file(atlantis) do
  it { should exist }
  its('type') { should eq :file }
  it { should_not be_directory }
  it { should be_executable }
  # to get the latest sha you should download the zip archive and extract it
  # if needed you may have to install `coreutils` (package name for deb derivitives)
  # root@dokken:/# sha256sum /usr/local/bin/atlantis
  # c094def53949d658bb3ead360b86a432e3cc48609252621da7855f7fc7f0d136  /usr/local/bin/atlantis
  its('sha256sum') { should eq 'c094def53949d658bb3ead360b86a432e3cc48609252621da7855f7fc7f0d136' }
end
