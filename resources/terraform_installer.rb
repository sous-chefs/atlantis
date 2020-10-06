# frozen_string_literal: true

# include our helpers

# install terraform
# TODO: install terraform via https://github.com/haidangwa/chef-terraform or other
include AtlantisCookbook::Helpers

resource_name :terraform_installer
provides :terraform_installer

property :append_version_to_file, [true, false], default: false
property :checksum, String, regex: /^[a-zA-Z0-9]{64}$/
property :download_base_url, String, default: 'https://releases.hashicorp.com'

property :group, [String, Integer], default: 'atlantis'
property :owner, String, default: 'atlantis'
property :mode, [String, Integer], default: 0o755

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
    version new_resource.version
    checksum new_resource.checksum unless new_resource.checksum.nil?
    prefix_root '/opt/atlantis'
    prefix_home '/opt/atlantis'
    owner new_resource.owner
    group new_resource.group
    mode new_resource.mode
    if new_resource.append_version_to_file
      has_binaries ["terraform#{new_resource.version}"]
    else
      has_binaries ['terraform']
    end
    strip_components 0
  end
end

action :remove do
  file '/usr/local/bin/terraform' do
    action :delete
  end
end
