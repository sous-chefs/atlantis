[back to resource list](https://github.com/sous-chefs/atlantis#resources)

---

# terraform_installer

## Actions

- `:install` [default]
- `:remove`

## Properties

| name                        | Type            | Default                                                            | Description   |
| --------------------------- | --------------- | ------------------------------------------------------------------ | ------------- |
| append_version_to_file      | true, false     | false                                                              |               |
| checksum                    | String          | `35c662be9d32d38815cde5fa4c9fa61a3b7f39952ecd50ebf92fd1b2ddd6109b` | Required      |
| download_base_url           | String          | `https://releases.hashicorp.com`                                   |               |
| group                       | String, Integer | `atlantis`                                                         |               |
| owner                       | String          | `atlantis`                                                         |               |
| mode                        | String, Integer | `0755`                                                             |               |
| version                     | String          | `0.13.3`                                                           | Required      |

## Examples

```ruby
terraform_installer 'terraform' do
  version '0.13.3'
  checksum '35c662be9d32d38815cde5fa4c9fa61a3b7f39952ecd50ebf92fd1b2ddd6109b'
end
```
