[back to resource list](https://github.com/sous-chefs/atlantis#resources)

---

# terragrunt_installer

## Actions

- `:install` [default]
- `:remove`

## Properties

| name                        | Type            | Default                                                            | Description   |
| --------------------------- | --------------- | ------------------------------------------------------------------ | ------------- |
| checksum                    | String          | `3b033389977ca6e7d10bad10514f22fa767c85b76db92befe83e67bafa2c8413` | Required      |
| download_base_url           | String          | `https://github.com/gruntwork-io/terragrunt/releases/download`     |               |
| group                       | String, Integer | `atlantis`                                                         |               |
| owner                       | String          | `atlantis`                                                         |               |
| mode                        | String, Integer | `0755`                                                             |               |
| version                     | String          | `0.25.4`                                                           | Required      |

## Examples

```ruby
terragrunt_repo_config = {
  'repos' => [
    {
      'id' => '/.*/',
      'allow_custom_workflows' => false,
      'allowed_overrides' => [
        'workflow',
      ],
    },
  ],
  'workflows' => {
    # Terragrunt workflow - https://terragrunt.gruntwork.io/
    'terragrunt' => {
      'plan' => {
        'steps' => [
          {
            'env' => {
              'name' => 'TERRAGRUNT_TFPATH',
              'command' => "echo \"/opt/atlantis/data/bin/terraform\${ATLANTIS_TERRAFORM_VERSION}\"",
            },
          },
          {
            'run' => 'terragrunt plan -no-color -out=$PLANFILE 2>&1 | awk \'BEGIN{flag=0} { if (!flag && /------------------------------------------------------------------------/){ flag=1; buf="" } else {buf = buf $0 ORS} } END { printf "%s", buf; }\'',
          },
        ],
      },
      'apply' => {
        'steps' => [
          {
            'env' => {
              'name' => 'TERRAGRUNT_TFPATH',
              'command' => "echo \"/opt/atlantis/data/bin/terraform\${ATLANTIS_TERRAFORM_VERSION}\"",
            },
          },
          {
            'run' => 'terragrunt apply -no-color $PLANFILE 2>&1 | awk \'BEGIN{flag=0} { if (!flag && /------------------------------------------------------------------------/){ flag=1; buf="" } else {buf = buf $0 ORS} } END { printf "%s", buf; }\'',
          },
        ],
      },
    },
  },
}

atlantis_config 'repo-config' do
  atlantis_config_file 'repos.yaml'
  template_variables terragrunt_repo_config
end

terragrunt_installer 'default'
```
