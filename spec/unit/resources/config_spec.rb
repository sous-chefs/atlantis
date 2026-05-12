# frozen_string_literal: true

require 'spec_helper'

describe 'atlantis_config' do
  step_into :atlantis_config

  platform 'ubuntu', '24.04'

  context 'with action :configure' do
    recipe do
      atlantis_config 'atlantis' do
        template_variables('repo-allowlist' => 'github.com/example/*')
      end
    end

    it { is_expected.to create_template('/opt/atlantis/atlantis.yaml').with(owner: 'atlantis', group: 'atlantis', mode: '0600') }
  end

  context 'with action :remove' do
    recipe do
      atlantis_config 'atlantis' do
        action :remove
      end
    end

    it { is_expected.to delete_file('/opt/atlantis/atlantis.yaml') }
  end
end
