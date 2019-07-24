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
  'gh-user'           => 'my-atlantis-bot',
  'gh-token'          => 'A_GITHUB_TOKEN',
  'gh-webhook-secret' => 'A_GITHUB_WEBHOOK_SECRET',
  'log-level'             => 'INFO',
  'port'                  => 4141,
  'require-approval'      => true,
  'repo-whitelist'        => %w(org/repo1 org/repo2),
}

atlantis_config 'atlantis' do
  template_variables config_vars
end

# install required dependencies
package %w(unzip git)

atlantis_installer 'atlantis' do
  version '0.8.3'
  #checksum 'ca3d237a75f76e08cf4d8a33eba8aaceefeee8a21c4bc81ed971e88350e372b5'
  action :install
end

terraform_installer 'terraform' do
  version '0.12.5'
  #checksum 'babb4a30b399fb6fc87a6aa7435371721310c2e2102a95a763ef2c979ab06ce'
  action :install
end

if node['platform_version'] == '14.04'
  atlantis_service_upstart 'atlantis' do
    action :setup
  end
else
  atlantis_service_systemd 'atlantis' do
    action :setup
  end
end
