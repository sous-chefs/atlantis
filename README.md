# atlantis-chef
Installs and configures an [atlantis server](https://www.runatlantis.io)

## Scope

Install and configure atlantis with terraform, the cookbook only gives custom resources to leverage and will not include any recipes, for an example you can look at the testing cookbook at `test/fixtures/cookbooks/atlantis_test`.

### Gotchas

Install os packages such as `unzip` which is required to use the providers. For example in your recipe you can define:
```ruby
package 'unzip'
```

Similarly packages such as `git` that atlantis needs must be installed in your recipe. For example:
```ruby
package 'git'
```


### Build and Release

Maintainers are expected to cut releases within 24 hours after each functional pull request is merged into master. Updates to docs, testing, etc do not apply. If you are awaiting a release please open an issue and ping `@majormoses`.

#### Versioning

We follow [semver2](https://semver.org/spec/v2.0.0.html) very strictly and any notable exceptions are outlined [here](https://github.com/sensu-plugins/community/blob/master/HOW_WE_VERSION.md)

#### Process

1. Manually bump the version in `metadata.rb`
1. Update Changelog to include any missing features.
1. Update Changelog to include a version header and diff links
1. Pull request their changes into the `default` (will typically be `master` branch)
1. Once it has been merged into the default branch you can tag the commit using tools such as [hub](https://github.com/github/hub) via `hub release create $MAJOR.$MINOR.$PATCH` or using `make gittag`. To push to the supermarket you can run `stove --no-git` if you have permission on the supermarket.
1. Put a link to the pull request with a link to the supermarket release to inform the contributor that their change has been released.
