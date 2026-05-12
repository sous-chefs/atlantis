# frozen_string_literal: true

require 'spec_helper'

describe 'atlantis_service_systemd' do
  step_into :atlantis_service_systemd

  platform 'ubuntu', '24.04'

  context 'with action :setup' do
    recipe do
      atlantis_service_systemd 'atlantis' do
        service_actions [:create]
      end
    end

    it { is_expected.to create_systemd_unit('atlantis.service') }
  end

  context 'with action :remove' do
    recipe do
      atlantis_service_systemd 'atlantis' do
        action :remove
      end
    end

    it { is_expected.to stop_systemd_unit('atlantis.service') }
    it { is_expected.to disable_systemd_unit('atlantis.service') }
    it { is_expected.to delete_systemd_unit('atlantis.service') }
  end
end
