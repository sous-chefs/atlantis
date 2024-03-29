# atlantis Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/atlantis.svg)](https://supermarket.chef.io/cookbooks/atlantis)
[![CI State](https://github.com/sous-chefs/apache2/workflows/ci/badge.svg)](https://github.com/sous-chefs/atlantis/actions?query=workflow%3Aci)
[![OpenCollective](https://opencollective.com/sous-chefs/backers/badge.svg)](#backers)
[![OpenCollective](https://opencollective.com/sous-chefs/sponsors/badge.svg)](#sponsors)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

Installs and configures an [atlantis server](https://www.runatlantis.io) with terraform, the cookbook only gives custom resources to leverage and will not include any recipes, for an example you can look at the testing cookbook at `test/fixtures/cookbooks/atlantis_test`.

## Maintainers

This cookbook is maintained by the Sous Chefs. The Sous Chefs are a community of Chef cookbook maintainers working together to maintain important cookbooks. If you’d like to know more please visit [sous-chefs.org](https://sous-chefs.org/) or come chat with us on the Chef Community Slack in [#sous-chefs](https://chefcommunity.slack.com/messages/C2V7B88SF).

## Requirements

### Cookbooks

The following cookbooks are direct dependencies because they're used for common "default" functionality.

- `ark` for installing terraform and atlantis

### Platforms

The following platforms are supported and tested with Test Kitchen:

- CentOS 7+
- Ubuntu 18.04+

Other Debian and RHEL family distributions are assumed to work.

### Chef

- Chef 15.3+

May continue working on older EOL versions of Chef

## Resources

- [atlantis_config](https://github.com/sous-chefs/atlantis/blob/master/documentation/resource_atlantis_config.md)
- [atlantis_installer](https://github.com/sous-chefs/atlantis/blob/master/documentation/resource_atlantis_installer.md)
- [atlantis_service_systemd](https://github.com/sous-chefs/atlantis/blob/master/documentation/resource_atlantis_service_systemd.md)
- [atlantis_service_upstart](https://github.com/sous-chefs/atlantis/blob/master/documentation/resource_atlantis_service_upstart.md)
- [terraform_installer](https://github.com/sous-chefs/atlantis/blob/master/documentation/resource_terraform_installer.md)
- [terragrunt_installer](https://github.com/sous-chefs/atlantis/blob/master/documentation/resource_terragrunt_installer.md)
- [atlantis_user_group_setup](https://github.com/sous-chefs/atlantis/blob/master/documentation/resource_atlantis_user_group_setup.md)

## Usage

This cookbook is now resource-based. Use the resources described above in wrapper cookbooks or recipes.

## Contributors

This project exists thanks to all the people who [contribute.](https://opencollective.com/sous-chefs/contributors.svg?width=890&button=false)

### Backers

Thank you to all our backers!

![https://opencollective.com/sous-chefs#backers](https://opencollective.com/sous-chefs/backers.svg?width=600&avatarHeight=40)

### Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website.

![https://opencollective.com/sous-chefs/sponsor/0/website](https://opencollective.com/sous-chefs/sponsor/0/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/1/website](https://opencollective.com/sous-chefs/sponsor/1/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/2/website](https://opencollective.com/sous-chefs/sponsor/2/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/3/website](https://opencollective.com/sous-chefs/sponsor/3/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/4/website](https://opencollective.com/sous-chefs/sponsor/4/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/5/website](https://opencollective.com/sous-chefs/sponsor/5/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/6/website](https://opencollective.com/sous-chefs/sponsor/6/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/7/website](https://opencollective.com/sous-chefs/sponsor/7/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/8/website](https://opencollective.com/sous-chefs/sponsor/8/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/9/website](https://opencollective.com/sous-chefs/sponsor/9/avatar.svg?avatarHeight=100)
