# atlantis_service_systemd

[Back to resource list](../README.md#resources)

## Actions

* `:setup` - create and manage the Atlantis systemd unit.
* `:remove` - stop, disable, and delete the Atlantis systemd unit.

## Properties

| Name | Type | Default |
| --- | --- | --- |
| `atlantis_bin_location` | String | `/usr/local/bin/atlantis` |
| `atlantis_config_name` | String | `atlantis.yaml` |
| `atlantis_group` | String | `atlantis` |
| `atlantis_home` | String | `/opt/atlantis` |
| `atlantis_success_exit_status` | String, Integer | `143` |
| `atlantis_user` | String | `atlantis` |
| `environment` | String, Array | `nil` |
| `environment_file` | String, Array | `nil` |
| `service_actions` | Array, Symbol | `[:create, :enable, :start]` |
| `timeout_stop_sec` | String, Integer | `5` |
| `use_exec_stop` | true, false | `true` |

## Example

```ruby
atlantis_service_systemd 'atlantis' do
  environment ['ATLANTIS_LOG_LEVEL=info']
  use_exec_stop false
end
```
