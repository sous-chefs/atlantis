[back to resource list](https://github.com/sous-chefs/atlantis#resources)

---

# atlantis_config

## Actions

- `:configure` [default]
- `:remove`

## Properties

| name                        | Type            | Default                     | Description   |
| --------------------------- | --------------- | --------------------------- | ------------- |
| atlantis_config_group       | String, Integer | `atlantis`                  |               |
| atlantis_config_owner       | String, Integer | `atlantis`                  |               |
| atlantis_config_file        | String          | `atlantis.yml`              |               |
| atlantis_config_path        | String          | `/opt/atlantis`             |               |
| atlantis_config_permissions | String, Integer | 0o600                       |               |
| template_cookbook           | String          | `atlantis`                  |               |
| template_config_file        | String          | `atlantis.yaml.erb`         |               |
| template_variables          | Hash            | {}                          |               |

## Examples

```ruby
config_vars = {
  'atlantis-url'          => 'https://localhost:4141',
  'allow-repo-config'     => false,
  'gh-user'               => 'my-atlantis-bot',
  'gh-token'              => 'A_GITHUB_TOKEN',
  'gh-webhook-secret'     => 'A_GITHUB_WEBHOOK_SECRET',
  'log-level'             => 'info',
  'port'                  => 4141,
  'require-approval'      => true,
  'repo-whitelist'        => %w(org/repo1 org/repo2).join(','),
}

atlantis_config 'atlantis' do
  template_variables config_vars
end
```
