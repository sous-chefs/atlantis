# frozen_string_literal: true

atlantis_bin = '/usr/local/bin/atlantis'

describe file(atlantis_bin) do
  it { should exist }
  its('type') { should eq :file }
  it { should_not be_directory }
  it { should be_executable }
  # to get the latest sha you should download the zip archive and extract it
  # if needed you may have to install `coreutils` (package name for deb derivitives)
  # root@dokken:/# sha256sum /usr/local/bin/atlantis/atlantis
  # c094def53949d658bb3ead360b86a432e3cc48609252621da7855f7fc7f0d136  /usr/local/bin/atlantis/atlantis
  its('sha256sum') { should eq 'c094def53949d658bb3ead360b86a432e3cc48609252621da7855f7fc7f0d136' }
end

describe command("#{atlantis_bin} version") do
  its('stdout') { should match(/(atlantis)\s([0-9]+\.){2}[0-9+]/) }
  its('exit_status') { should eq 0 }
end

describe file('/opt/atlantis/atlantis.yaml'), :sensitive do
  it { should exist }
  its('group') { should eq 'atlantis' }
  its('mode') { should cmp '0600' }
end

describe yaml('/opt/atlantis/atlantis.yaml'), :sensitive do
  its('atlantis-url') { should eq 'https://localhost:4141' }
  its('allow-repo-config') { should eq false }
  its('gh-user') { should eq 'my-atlantis-bot' }
  its('gh-token') { should eq 'A_GITHUB_TOKEN' }
  its('gh-webhook-secret') { should eq 'A_GITHUB_WEBHOOK_SECRET' }
  its('log-level') { should eq 'info' }
  its('port') { should eq 4141 }
  its('require-approval') { should eq true }
  its('repo-whitelist') { should eq 'org/repo1,org/repo2' }
end

describe http('localhost:4141/healthz') do
  its('status') { should eq 200 }
end
