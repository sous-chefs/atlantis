[back to resource list](https://github.com/sous-chefs/atlantis#resources)

---

# terraform_installer

## Actions

- `:install` [default]
- `:remove`

## Properties

| name                        | Type            | Default                                                     | Description   |
| --------------------------- | --------------- | ----------------------------------------------------------- | ------------- |
| append_version_to_file      | true, false     | false                                                       |               |
| checksum                    | String          |                                                             | Required      |
| download_base_url           | String          | `https://releases.hashicorp.com`                            |               |
| group                       | String, Integer | `atlantis`                                                  |               |
| owner                       | String, Integer | `atlantis`                                                  |               |
| mode                        | String, Integer | `0755`                                                      |               |
| version                     | String          |                                                             | Required      |

## Examples

```ruby
terraform_installer 'terraform' do
  version '0.11.7'
  checksum '6b8ce67647a59b2a3f70199c304abca0ddec0e49fd060944c26f666298e23418'
end
```
