# atlantis_installer

[back to resource list](https://github.com/sous-chefs/atlantis#resources)

## Actions

- `:install` [default]
- `:remove`

## Properties

| name                        | Type            | Default                                                            | Description |
| --------------------------- | --------------- | ------------------------------------------------------------------ | ----------- |
| checksum                    | String          | `cc6e7f018de56d4d6e9b580e025da44a8e13d533b47fac73ca36acbeb8531d12` |             |
| download_base_url           | String          | `https://github.com/runatlantis/atlantis/releases/download`        |             |
| group                       | String, Integer | `atlantis`                                                         |             |
| owner                       | String          | `atlantis`                                                         |             |
| mode                        | String, Integer | `0755`                                                             |             |
| version                     | String          | `0.25.0`                                                           |             |

## Examples

```ruby
atlantis_installer 'default'
```
