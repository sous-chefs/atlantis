control 'atlantis-default-01' do
  impact 1.0
  title 'Atlantis resources create the expected artifacts'

  describe user('atlantis') do
    it { should exist }
    its('home') { should eq '/opt/atlantis' }
  end

  describe group('atlantis') do
    it { should exist }
  end

  describe file('/opt/atlantis/atlantis.yaml') do
    it { should exist }
    its('owner') { should eq 'atlantis' }
    its('group') { should eq 'atlantis' }
    its('mode') { should cmp '0600' }
    its('content') { should match(/repo-allowlist/) }
  end

  describe file('/usr/local/bin/atlantis') do
    it { should exist }
    it { should be_executable }
  end

  describe systemd_service('atlantis.service') do
    it { should be_installed }
  end
end
