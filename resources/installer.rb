# frozen_string_literal: true
include AtlantisCookbook::Helpers

resource_name :atlantis_installer
provides :atlantis_installer

property :checksum, String, regex: /^[a-zA-Z0-9]{64}$/
property :download_base_url, String, default: 'https://github.com/runatlantis/atlantis/releases/download'
property :group, [String, Integer], default: 'atlantis'
property :owner, [String, Integer], default: 'atlantis'

property :mode, [String, Integer], default: '0755'
property :version, String, required: true

default_action :install

# actions
action :install do
  # install atlantis
  ark 'atlantis' do
    url github_download_url(new_resource.download_base_url, new_resource.version)
    version new_resource.version
    checksum new_resource.checksum unless new_resource.checksum.nil?
    prefix_root '/opt/atlantis'
    prefix_home '/opt/atlantis'
    has_binaries ['atlantis']
    strip_components 0
    owner new_resource.owner
    group new_resource.group
    mode new_resource.mode
  end
end

action :remove do
  file '/usr/local/bin/atlantis' do
    action :delete
  end
end
