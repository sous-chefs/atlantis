# atlantis_service_systemd

[back to resource list](https://github.com/sous-chefs/atlantis#resources)

## Actions

- `:setup` [default]
- `:remove`

## Properties

| name                          | Type            | Default                   | Description   |
| ----------------------------- | --------------- | ------------------------- | ------------- |
| atlantis_bin_location         | String          | `/usr/local/bin/atlantis` |               |
| atlantis_config_name          | String          | `atlantis.yml`            |               |
| atlantis_group                | String          | `atlantis`                |               |
| atlantis_home                 | String          | `/opt/atlantis`           |               |
| timeout_stop_sec              | String, Integer | 5                         |               |
| atlantis_success_exit_status  | String, Integer | 143                       | The exit status code 143 = 128 + 15 = default terminate by system when the application doesn't have one |
| atlantis_user                 | String          | `atlantis`                |               |
| use_exec_stop                 | true, false     | true                      | Atlantis 0.15 introduced a delayed shutdown option and it doesnt play nice with kill. Setting this to false removes the ExecStop which allows Atlantis to gracefully shutdown. |
| environment                   | String, Array   |                           | Environment variable(s) for Atlantis service |
| environment_file              | String, Array   |                           | Environment file containing variable for Atlantis use |

## Examples

```ruby
atlantis_service_systemd 'atlantis' do
  use_exec_stop false
  environment ['John=Basement', 'Tom=Roof']
end
```
