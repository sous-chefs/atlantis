# atlantis_user_group

## Properties

| name          | Type            | Default          | Description   |
| ------------- | --------------- | ---------------- | ------------- |
| username      | String          | `atlantis`       |               |
| groupname     | String          | `atlantis`       |               |
| home          | String          | `/opt/atlantis`  |               |

## Examples

```ruby
atlantis_user_group_setup 'atlantis' do
  username 'atlantis'
  groupname 'atlantis'
end
```
