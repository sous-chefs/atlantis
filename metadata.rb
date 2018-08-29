# frozen_string_literal: false

require 'semver'

name             'atlantis'
maintainer       'Ben Abrams'
maintainer_email 'me@benabrams.it'
license          'MIT'
description      'Installs/Configures atlantis server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
chef_version     '>= 13.0' if respond_to?(:chef_version)
issues_url       'https://github.com/majormoses/atlantis-chef/issues' if respond_to?(:issues_url)
source_url       'https://github.com/majormoses/atlantis-chef' if respond_to?(:source_url)
# probably supports others but thats what we are currently testing
supports         'ubuntu', '= 14.04'
supports         'ubuntu', '= 16.04'
supports         'ubuntu', '= 18.04'

# TODO: come back and revisit an automated workflow
# version SemVer.find.format '%M.%m.%p'
version '0.1.0'

depends 'ark', '~> 4.0'
