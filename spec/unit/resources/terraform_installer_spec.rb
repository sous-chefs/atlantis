# frozen_string_literal: true

require 'spec_helper'

describe 'terraform_installer' do
  step_into :terraform_installer

  platform 'ubuntu', '24.04'

  context 'with action :install' do
    recipe do
      terraform_installer 'default' do
        ignore_checksum true
      end
    end

    it { is_expected.to install_package('unzip') }
    it { is_expected.to install_ark('terraform') }
  end

  context 'with action :remove' do
    recipe do
      terraform_installer 'default' do
        action :remove
      end
    end

    it { is_expected.to delete_file('/usr/local/bin/terraform') }
  end
end
