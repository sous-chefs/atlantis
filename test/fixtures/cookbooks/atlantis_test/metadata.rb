# frozen_string_literal: true

name             'atlantis_test'
maintainer       'Ben Abrams'
maintainer_email 'me@benabrams.it'
license          'MIT'
description      'Testing atlantis setup/install'
long_description 'Testing atlantis setup/install'
chef_version     '>= 15' if respond_to?(:chef_version)
version          '0.0.2'
issues_url       'https://github.com/majormoses/atlantis-chef/issues'
source_url       'https://github.com/majormoses/atlantis-chef'
supports         'ubuntu'

depends 'atlantis'
