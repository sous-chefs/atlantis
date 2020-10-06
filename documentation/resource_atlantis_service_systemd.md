# atlantis_service_systemd

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

## Examples

```ruby
atlantis_service_systemd 'atlantis' do
  action :setup
end
```
