# atlantis_user_group_setup

[Back to resource list](../README.md#resources)

## Actions

* `:create` - create the Atlantis group, user, and home directory.
* `:remove` - remove the managed Atlantis user and group.

## Properties

| Name | Type | Default |
| --- | --- | --- |
| `username` | String | `atlantis` |
| `groupname` | String | `atlantis` |
| `home` | String | `/opt/atlantis` |

## Example

```ruby
atlantis_user_group_setup 'atlantis'
```
