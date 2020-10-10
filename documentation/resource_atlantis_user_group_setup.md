[back to resource list](https://github.com/sous-chefs/atlantis#resources)

---

# atlantis_user_group

## Actions

- `:create` [default]
- `:remove`

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
