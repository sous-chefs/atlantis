# terraform_installer

[Back to resource list](../README.md#resources)

## Actions

* `:install` - install Terraform from HashiCorp releases.
* `:remove` - remove the managed Terraform binary link.

## Properties

| Name | Type | Default |
| --- | --- | --- |
| `append_version_to_file` | true, false | `false` |
| `checksum` | String | `35c662be9d32d38815cde5fa4c9fa61a3b7f39952ecd50ebf92fd1b2ddd6109b` |
| `download_base_url` | String | `https://releases.hashicorp.com` |
| `group` | String, Integer | `atlantis` |
| `ignore_checksum` | true, false | `false` |
| `mode` | String, Integer | `0755` |
| `owner` | String | `atlantis` |
| `version` | String | `0.13.3` |

## Example

```ruby
terraform_installer 'default'
```
