# frozen_string_literal: true

atlantis_user_group_setup 'atlantis'

atlantis_installer 'default' do
  ignore_checksum true
end

atlantis_config 'atlantis' do
  template_variables(
    'atlantis-url' => 'http://localhost:4141',
    'gh-token' => 'fake-token',
    'gh-user' => 'atlantis',
    'repo-allowlist' => 'github.com/example/*'
  )
end

atlantis_service_systemd 'atlantis' do
  service_actions [:create]
end
