# frozen_string_literal: true

resource_name :atlantis_user_group_setup

property :username, String, default: 'atlantis'
property :groupname, String, default: 'atlantis'

default_action :create

# actions
action :create do
  user new_resource.username do
    comment 'Atlantis User'
    system true
    action :create
    manage_home true # for terraform to cache plugins
  end

  group new_resource.groupname do
    action :create
    members new_resource.username
    system true
  end
end

action :remove do
  user new_resource.username do
    action :remove
    not_if { new_resource.username == 'root' }
  end

  group new_resource.groupname do
    action :remove
    not_if { new_resource.groupname == 'root' }
  end
end
