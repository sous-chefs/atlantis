# Limitations

## Package Availability

Atlantis, Terraform, and Terragrunt are installed from upstream release binaries rather than
operating system package repositories.

### Atlantis

Atlantis release artifacts are downloaded from GitHub releases. The cookbook constructs download
URLs for Linux, macOS, and Windows and supports the upstream `amd64`, `arm64`, and `386` asset
naming used by the release archives.

### Terraform

Terraform is downloaded from HashiCorp releases. HashiCorp publishes Linux binaries for `386`,
`amd64`, `arm`, and `arm64`; the cookbook uses the Linux archive URL for the target architecture.

### Terragrunt

Terragrunt is downloaded from GitHub releases. The cookbook uses Linux binary assets for the target
architecture.

## Architecture Limitations

The default test and CI coverage is Linux on current Sous Chefs Dokken platforms. Windows and macOS
URL helpers remain in the helper module for consumers, but this cookbook does not claim tested
Windows or macOS support.

## Source/Compiled Installation

The cookbook does not build Atlantis, Terraform, or Terragrunt from source.

## Known Issues

The legacy `atlantis_service_upstart` resource was removed because upstart platforms are
end-of-life and the cookbook now supports systemd only.
