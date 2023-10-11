# frozen_string_literal: true

module AtlantisCookbook
  module Helpers
    def cpu_arch
      case node['kernel']['processor']
      when /x86_64/
        'amd64'
      when /armv8/
        'arm64'
      else
        '386'
      end
    end

    def platform
      case node['platform']
      when 'windows'
        'windows'
      when 'mac_os_x'
        'darwin'
      else
        'linux'
      end
    end

    def github_download_url(base_url, version)
      # https://github.com/runatlantis/atlantis/releases/download/v0.4.4/atlantis_linux_amd64.zip
      "#{base_url}/v#{version}/atlantis_#{platform}_#{cpu_arch}.zip"
    end

    def hashicorp_download_url(base_url, product, version)
      # https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
      "#{base_url}/#{product}/#{version}/#{product}_#{version}_linux_#{cpu_arch}.zip"
    end

    def terragrunt_github_download_url(base_url, version)
      # https://github.com/gruntwork-io/terragrunt/releases/download/v0.25.4/terragrunt_linux_amd64
      "#{base_url}/v#{version}/terragrunt_linux_#{cpu_arch}"
    end
  end
end
