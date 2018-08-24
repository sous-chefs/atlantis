# frozen_string_literal: true

# include our helpers

# install terraform
# TODO: install terraform via https://github.com/haidangwa/chef-terraform or other
resource_name :terraform_installer

include AtlantisCookbook::Helpers

property :append_version_to_file, [TrueClass, FalseClass], default: false
property :checksum, regex: /^[a-zA-Z0-9]{64}$/, default: nil
property :download_base_url, String, default: 'https://releases.hashicorp.com'

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
    # while it might seem redundant to create a dir with only a
    # single binary the ark cookbook otherwise wants to reset
    # permissions for everything in the path. For example
    # `* execute[set owner on /usr/local/bin] action run`
    # `  - execute chown -R :0 /usr/local/bin`
    # another benefit of this is that you can have multiple
    # terraform versions installed into the same path and
    # atlantis will pick it up.
    path '/usr/local/bin/terraform'
    if new_resource.append_version_to_file
      creates "terraform#{new_resource.version}"
    else
      creates 'terraform'
    end
    action :dump
    checksum new_resource.checksum unless new_resource.checksum.nil?
  end
end

action :remove do
  file '/usr/local/bin/terraform' do
    action :delete
  end
end
