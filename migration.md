# Migration

## Full Custom Resource Migration

This release keeps Atlantis as a resource-only cookbook and removes the obsolete upstart service
resource.

### Removed

* `atlantis_service_upstart`

### Replacement

Use `atlantis_service_systemd` on supported Linux platforms:

```ruby
atlantis_service_systemd 'atlantis'
```

The cookbook has no public recipes or attributes. Put resource usage in a wrapper cookbook or in
your policy's test cookbook recipes.
