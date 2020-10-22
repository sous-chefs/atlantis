# frozen_string_literal: true

control 'Atlantis Service Common' do
  describe service('atlantis') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end

control 'Atlantis Service SystemD' do
  only_if { os.release != '14.04' }

  describe ini('/etc/systemd/system/atlantis.service') do
    its('Unit.Description') { should cmp 'Atlantis' }
    its('Unit.After') { should cmp 'network-online.target' }

    its('Service.Type') { should cmp 'simple' }
    its('Service.User') { should cmp 'atlantis' }
    its('Service.Group') { should cmp 'atlantis' }
    its('Service.Environment') { should cmp 'Tom=Roof' }
    its('Service.ExecStart') { should cmp '/usr/local/bin/atlantis server --config /opt/atlantis/atlantis.yaml' }
    its('Service.SuccessExitStatus') { should cmp 143 }
    its('Service.Restart') { should cmp 'always' }

    its('Install.WantedBy') { should cmp 'multi-user.target' }
  end
end
