# frozen_string_literal: true

require 'spec_helper'

describe 'atlantis_installer' do
  step_into :atlantis_installer

  platform 'ubuntu', '24.04'

  context 'with action :install' do
    recipe do
      atlantis_installer 'default' do
        ignore_checksum true
      end
    end

    it { is_expected.to install_package('unzip') }
    it { is_expected.to install_ark('atlantis') }
  end

  context 'with action :remove' do
    recipe do
      atlantis_installer 'default' do
        action :remove
      end
    end

    it { is_expected.to delete_file('/usr/local/bin/atlantis') }
  end
end
