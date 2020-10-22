# frozen_string_literal: true

# setup atlantis user/group
atlantis_user_group_setup 'atlantis' do
  username 'atlantis'
  groupname 'atlantis'
end

# drop down atlantis config
# create a local hash for testing
config_vars = {
  'atlantis-url'          => 'https://localhost:4141',
  'allow-repo-config'     => false,
  'gh-user'               => 'my-atlantis-bot',
  'gh-token'              => 'A_GITHUB_TOKEN',
  'gh-webhook-secret'     => 'A_GITHUB_WEBHOOK_SECRET',
  'log-level'             => 'info',
  'port'                  => 4141,
  'repo-allowlist'        => %w(org/repo1 org/repo2).join(','),
}

atlantis_config 'atlantis' do
  template_variables config_vars
end

# install required dependencies
package %w(unzip git)

atlantis_installer 'atlantis' do
  version '0.15.0'
  checksum 'a236e7c9df159f8787b143c670f1899dd4bc4349f23ed696468600280fa1266e'
end

terraform_installer 'terraform' do
  version '0.13.3'
  checksum '35c662be9d32d38815cde5fa4c9fa61a3b7f39952ecd50ebf92fd1b2ddd6109b'
end

if node['platform_version'] == '14.04'
  atlantis_service_upstart 'atlantis'
else
  atlantis_service_systemd 'atlantis' do
    use_exec_stop false
    environment ['John=Basement', 'Tom=Roof']
  end
end
