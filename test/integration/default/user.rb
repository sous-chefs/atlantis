# frozen_string_literal: true

describe user('atlantis') do
  it { should exist }
  its('group') { should eq 'atlantis' }
  its('home') { should eq '/opt/atlantis' }
end

describe group('atlantis') do
  it { should exist }
end

describe file('/opt/atlantis') do
  it { should exist }
  it { should be_directory }
  it { should be_executable }
  its('mode') { should cmp '0751' }
end
