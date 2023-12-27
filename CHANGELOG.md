# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

## 3.0.2 - *2023-12-27*

## 3.0.1 - *2023-10-31*

## 3.0.0 - *2023-10-11*

- Change license to Apache-2.0
- Markdown lint fixes
- Update standard files

## 2.0.4 - *2023-03-02*

- Fix yaml

## 2.0.3 - *2023-03-01*

- Update workflows to 2.0.1
- Remove mdl and replace with markdownlint-cli2

## 2.0.2 - *2023-02-14*

## 2.0.1 - *2023-02-14*

- Remove delivery

## 2.0.0 - *2022-01-19*

- Enable unified_mode and require Chef >= 15.3

## 1.2.3 - *2021-08-18*

Standardise files with files in sous-chefs/repo-management

## 1.2.2 - *2021-06-01*

## 1.2.1 - *2020-12-19*

- Update documentation with better Terragrunt command

## [1.2.0] - 2020-10-28

### Added

- Support for installing terragrunt and documentation of examples for configuration
- Default version support for installers to get setup without having to lookup versions

### Fixed

- Ark only support intergers on groups not owners
- Systemd resource user property was listed twice

## [1.1.0] - 2020-10-22

### Added

- Update systemd service resource to support environment file/vars

### Changed

- Fix to properly use recommended YAML.dump() method in template
- Update systemd service resource to remove ExecStop for compatibility with v0.15
- Update documentation to reflect changed/deprecated values in Atlantis config

## [1.0.0] - 2020-10-13

### Added

- Documentation

### Changed

- Update to Sous-Chefs common configs and repo style
- Xorimabot file standardizations
- Update README.md CHANGELOG.md
- Cookstyle fixes
- Update ark dependency to 5.0

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
