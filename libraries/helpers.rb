# frozen_string_literal: true

module AtlantisCookbook
  module Helpers
    def cpu_arch
      if node['kernel']['processor'].match?(/x86_64/)
        'amd64'
      else
        '386'
      end
    end

    def github_download_url(base_url, version)
      # https://github.com/runatlantis/atlantis/releases/download/v0.4.4/atlantis_linux_amd64.zip
      "#{base_url}/v#{version}/atlantis_linux_#{cpu_arch}.zip"
    end

    def hashicorp_download_url(base_url, product, version)
      # https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
      "#{base_url}/#{product}/#{version}/#{product}_#{version}_linux_#{cpu_arch}.zip"
    end
    end
  end
end
