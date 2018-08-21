# frozen_string_literal: true

describe user('atlantis') do
  it { should exist }
  its('group') { should eq 'atlantis' }
end

describe group('atlantis') do
  it { should exist }
end
