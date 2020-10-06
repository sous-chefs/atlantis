# atlantis_service_upstart

## Properties

| name                                     | Type            | Default          | Description   |
| ---------------------------------------- | --------------- | ---------------- | ------------- |
| atlantis_service_template_variables      | hash            | { atlantis_user: 'atlantis', atlantis_bin_location: '/usr/local/bin/atlantis', atlantis_config_name: 'atlantis.yaml', atlantis_home: '/opt/atlantis', timeout_stop_sec: 5, } |               |
| atlantis_service_template_cookbook       | String          | `atlantis`       |               |
| atlantis_user                            | String          | `atlantis`       |               |

## Examples

```ruby
atlantis_service_upstart 'atlantis' do
  action :setup
end
```
