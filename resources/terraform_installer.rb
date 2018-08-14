# frozen_string_literal: true

# include our helpers

# install terraform
# TODO: install terraform via https://github.com/haidangwa/chef-terraform or other
resource_name :terraform_installer

include AtlantisCookbook::Helpers

property :checksum, regex: /^[a-zA-Z0-9]{64}$/, default: nil
property :download_base_url, String, default: 'https://releases.hashicorp.com'

# these should probably be changed to 'atlantis'?
property :group, [String, Integer], default: 0
property :owner, String

property :version, String, required: true

default_action :install

# actions
action :install do
  # install terraform
  ark 'terraform' do
    url hashicorp_download_url(
      new_resource.download_base_url,
      'terraform',
      new_resource.version
    )
    path '/usr/local/bin'
    creates 'terraform'
    action :dump
    checksum new_resource.checksum unless new_resource.checksum.nil?
  end
end

action :remove do
  file '/usr/local/bin/terraform' do
    action :delete
  end
end
