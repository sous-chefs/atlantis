[back to resource list](https://github.com/sous-chefs/atlantis#resources)

---

# atlantis_installer

## Actions

- `:install` [default]
- `:remove`

## Properties

| name                        | Type            | Default                                                            | Description   |
| --------------------------- | --------------- | ------------------------------------------------------------------ | ------------- |
| checksum                    | String          | `a236e7c9df159f8787b143c670f1899dd4bc4349f23ed696468600280fa1266e` | Required      |
| download_base_url           | String          | `https://github.com/runatlantis/atlantis/releases/download`        |               |
| group                       | String, Integer | `atlantis`                                                         |               |
| owner                       | String          | `atlantis`                                                         |               |
| mode                        | String, Integer | `0755`                                                             |               |
| version                     | String          | `0.15.0`                                                           | Required      |

## Examples

```ruby
atlantis_installer 'default'
```
