[back to resource list](https://github.com/sous-chefs/atlantis#resources)

---

# atlantis_installer

## Actions

- `:install` [default]
- `:remove`

## Properties

| name                        | Type            | Default                                                     | Description   |
| --------------------------- | --------------- | ----------------------------------------------------------- | ------------- |
| checksum                    | String          |                                                             | Required      |
| download_base_url           | String          | `https://github.com/runatlantis/atlantis/releases/download` |               |
| group                       | String, Integer | `atlantis`                                                  |               |
| owner                       | String          | `atlantis`                                                  |               |
| mode                        | String, Integer | `0755`                                                      |               |
| version                     | String          |                                                             | Required      |

## Examples

```ruby
atlantis_installer 'atlantis' do
  version '0.4.5'
  checksum 'ca3d237a75f76e08cf4d8a33eba8aaceefeee8a21c4bc81ed971e88350e372b5'
end
```
