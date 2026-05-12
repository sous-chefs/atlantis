# terragrunt_installer

[Back to resource list](../README.md#resources)

## Actions

* `:install` - install Terragrunt from GitHub releases.
* `:remove` - remove the managed Terragrunt binary.

## Properties

| Name | Type | Default |
| --- | --- | --- |
| `checksum` | String | `3b033389977ca6e7d10bad10514f22fa767c85b76db92befe83e67bafa2c8413` |
| `download_base_url` | String | `https://github.com/gruntwork-io/terragrunt/releases/download` |
| `group` | String, Integer | `root` |
| `ignore_checksum` | true, false | `false` |
| `mode` | String, Integer | `0755` |
| `owner` | String, Integer | `root` |
| `version` | String | `0.25.4` |

## Example

```ruby
terragrunt_installer 'default'
```
