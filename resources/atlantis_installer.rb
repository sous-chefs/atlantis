# frozen_string_literal: true

resource_name :atlantis_installer

include AtlantisCookbook::Helpers

property :checksum, regex: /^[a-zA-Z0-9]{64}$/, default: nil
property :download_base_url, String, default: 'https://github.com/runatlantis/atlantis/releases/download'
property :group, [String, Integer], default: 'atlantis'
property :owner, [String, Integer], default: 'atlantis'

property :mode, [String, Integer], default: 0o755
property :version, String, required: true

default_action :install

# actions
action :install do
  # install atlantis
  ark 'atlantis' do
    url github_download_url(new_resource.download_base_url, new_resource.version)
    # while it might seem redundant to create a dir with only a
    # single binary the ark cookbook otherwise wants to reset
    # permissions for everything in the path. For example
    # `* execute[set owner on /usr/local/bin] action run`
    # `  - execute chown -R :0 /usr/local/bin`
    path '/usr/local/bin/atlantis'
    creates 'atlantis'
    action :dump
    checksum new_resource.checksum unless new_resource.checksum.nil?
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
