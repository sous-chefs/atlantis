# atlantis_config

[Back to resource list](../README.md#resources)

## Actions

* `:configure` - create the Atlantis YAML config file.
* `:remove` - remove the managed config file.

## Properties

| Name | Type | Default |
| --- | --- | --- |
| `atlantis_config_group` | String, Integer | `atlantis` |
| `atlantis_config_owner` | String, Integer | `atlantis` |
| `atlantis_config_file` | String | `atlantis.yaml` |
| `atlantis_config_path` | String | `/opt/atlantis` |
| `atlantis_config_permissions` | String, Integer | `0600` |
| `template_cookbook` | String | `atlantis` |
| `template_config_file` | String | `atlantis.yaml.erb` |
| `template_variables` | Hash | `{}` |

## Example

```ruby
atlantis_config 'atlantis' do
  template_variables(
    'atlantis-url' => 'https://atlantis.example.com',
    'gh-token' => 'A_GITHUB_TOKEN',
    'gh-user' => 'my-atlantis-bot',
    'repo-allowlist' => 'github.com/example/*'
  )
end
```
