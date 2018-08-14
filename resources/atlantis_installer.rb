# frozen_string_literal: true

resource_name :atlantis_installer

include AtlantisCookbook::Helpers

property :checksum, regex: /^[a-zA-Z0-9]{64}$/, default: nil
property :download_base_url, String, default: 'https://github.com/runatlantis/atlantis/releases/download'
# these should probably be changed to 'atlantis'
property :group, [String, Integer], default: 0
property :owner, String

property :mode, [String, Integer], default: 0o755
property :version, String, required: true

default_action :install

# actions
action :install do
  # install atlantis
  ark 'atlantis' do
    url github_download_url(new_resource.download_base_url, new_resource.version)
    path '/usr/local/bin'
    creates 'atlantis'
    action :dump
    checksum new_resource.checksum unless new_resource.checksum.nil?
    owner new_resource.owner unless new_resource.owner.nil?
    group new_resource.group unless new_resource.group.nil?
    mode new_resource.mode unless new_resource.mode.nil?
  end
end

action :remove do
  file '/usr/local/bin/atlantis' do
    action :delete
  end
end
