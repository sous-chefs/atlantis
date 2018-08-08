# atlantis-chef
Installs and configures an [atlantis server](https://www.runatlantis.io)

## Scope

Install and configure atlantis with terraform, the cookbook only gives custom resources to leverage and will not include any recipes, for an example you can look at the testing cookbook at `test/fixtures/cookbooks/atlantis_test`.

### Gotchas

Install os packages such as `unzip` which is required to use the providers. For example in your recipe you can define:
```ruby
package 'unzip'
```
