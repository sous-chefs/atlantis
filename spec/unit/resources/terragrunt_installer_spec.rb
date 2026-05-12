# frozen_string_literal: true

require 'spec_helper'

describe 'terragrunt_installer' do
  step_into :terragrunt_installer

  platform 'ubuntu', '24.04'

  context 'with action :install' do
    recipe do
      terragrunt_installer 'default' do
        ignore_checksum true
      end
    end

    it { is_expected.to create_remote_file('/usr/local/bin/terragrunt') }
  end

  context 'with action :remove' do
    recipe do
      terragrunt_installer 'default' do
        action :remove
      end
    end

    it { is_expected.to delete_file('/usr/local/bin/terragrunt') }
  end
end
