# atlantis_installer

[Back to resource list](../README.md#resources)

## Actions

* `:install` - install Atlantis from a GitHub release archive.
* `:remove` - remove the managed Atlantis binary link.

## Properties

| Name | Type | Default |
| --- | --- | --- |
| `checksum` | String | `a236e7c9df159f8787b143c670f1899dd4bc4349f23ed696468600280fa1266e` |
| `download_base_url` | String | `https://github.com/runatlantis/atlantis/releases/download` |
| `group` | String, Integer | `atlantis` |
| `owner` | String | `atlantis` |
| `mode` | String, Integer | `0755` |
| `version` | String | `0.25.0` |
| `ignore_checksum` | true, false | `false` |

## Example

```ruby
atlantis_installer 'default'
```
