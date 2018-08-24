# frozen_string_literal: true

resource_name :atlantis_config

include AtlantisCookbook::Helpers

property :atlantis_config_group, [String, Integer], default: 'atlantis'
property :atlantis_config_owner, [String, Integer], default: 'atlantis'
property :atlantis_config_file, String, default: 'atlantis.yaml'
property :atlantis_config_path, String, default: '/etc'

property :atlantis_config_permissions, [String, Integer], default: 0o600
property :template_cookbook, String, default: 'atlantis'
property :template_config_file, String, default: 'atlantis.yaml.erb'
property :template_variables, Hash, default: {}

default_action :configure

action :configure do
  directory new_resource.atlantis_config_path do
    owner new_resource.atlantis_config_owner
    group new_resource.atlantis_config_group
    mode new_resource.atlantis_config_permissions
    action :create
    not_if { new_resource.atlantis_config_path == '/etc' }
  end

  template "#{new_resource.atlantis_config_path}/#{new_resource.atlantis_config_file}" do
    sensitive true # api secrets and such
    cookbook new_resource.template_cookbook
    source new_resource.template_config_file
    owner new_resource.atlantis_config_owner
    group new_resource.atlantis_config_group
    mode new_resource.atlantis_config_permissions
    variables(vars: new_resource.template_variables)
  end
end

action :remove do
  # intentionally not cleaning up the directory as there may be
  # multiple atlantis installs on the same instance therefore its
  # only safe to assume we can delete the config file for the
  # resource we are currently managing. Also the default is /etc
  # so that would really only apply if someone wanted a non
  # standard location. Maybe expose a property to say look I know
  # what I am doing but thats something that can be added later
  # spurred by neccessity rather than potential wants for an
  # edgecase.
  file "#{new_resource.atlantis_config_path}/#{new_resource.atlantis_config_file}" do
    action :delete
  end
end
