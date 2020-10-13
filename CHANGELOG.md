# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2020-10-13

### Added

- Documentation

### Changed

- Update to Sous-Chefs common configs and repo style
- Xorimabot file standardizations
- Update README.md CHANGELOG.md
- Cookstyle fixes
- Update ark dependency to 5.0

### Removed

- **BREAKING CHANGE:** Updated config template to convert hash to YAML instead of custom logic
  - log-level must be lower case
  - repo-whitelist must be a `,` joined string

## [0.1.0] - 2018-08-29

### Added

- repo skel, misc project helpers (@majormoses)
- local and `travis-ci` testing: lint + integration (@majormoses)
- helper libraries to make it easy to download from `github` + `hashicorp` releases (@majormoses)
- new resource `atlantis_config` to manage the `atlantis` server config file (@majormoses)
- new resource `atlantis_installer` to install or remove `atlantis` (@majormoses)
- new resource `atlantis_service_systemd` to create or remove a `systemd` unit file for managing the `atlantis`  service (@majormoses)
- new resource `atlantis_service_upstart` to create or remove an `upstart` config for managing the `atlantis` service (@majormoses)
- new resource `atlantis_terrform_installer` to install or remove `terraform` for use with atlantis (@majormoses)
- new resource `atlantis_user_group_setup` which sets up or removes users, groups, and directories for atlantis service to use (@majormoses)
- use Apache 2 license (@majormoses)
