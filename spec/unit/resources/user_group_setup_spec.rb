# frozen_string_literal: true

require 'spec_helper'

describe 'atlantis_user_group_setup' do
  step_into :atlantis_user_group_setup

  platform 'ubuntu', '24.04'

  context 'with action :create' do
    recipe do
      atlantis_user_group_setup 'atlantis'
    end

    it { is_expected.to create_group('atlantis').with(system: true) }
    it { is_expected.to create_user('atlantis').with(system: true, manage_home: true, home: '/opt/atlantis', gid: 'atlantis') }
    it { is_expected.to create_directory('/opt/atlantis').with(owner: 'atlantis', group: 'atlantis', mode: '751') }
  end

  context 'with action :remove' do
    recipe do
      atlantis_user_group_setup 'atlantis' do
        action :remove
      end
    end

    it { is_expected.to remove_user('atlantis') }
    it { is_expected.to remove_group('atlantis') }
  end
end
