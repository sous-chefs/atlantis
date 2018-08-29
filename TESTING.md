# Testing this cookbook

The repo contains a `Makefile` to provide a standard interface to testing both locally and in travis. See the `Makefile` for advanced usage.

## Basic Testing

### Dependencies

Run:
```
bundle install
```

If you do not `bundler` installed you can get it by running `gem install bundler`

### Lint

#### Cookstyle

We use `cookstyle` which is an opinionated set of `rubocop` rules that are targeted to chef cookbooks, we also have some custom rules in `.rubocop.yml` that override these.

```
make rubotest
```

#### Foodcritic

We use `foodcritic` which looks for bad cookbook patterns.

```
make foodtest
```

### Integration tests

We use `test-kitchen`, `kitchen-dokken`, and `inspec` for integration testing. For advanced usage please see the respective projects.

```
bundle exec kitchen test [optional regex] [optional args]
```
