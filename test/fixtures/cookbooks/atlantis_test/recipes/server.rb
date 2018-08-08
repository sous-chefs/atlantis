# frozen_string_literal: true

# install required dependencies
package 'unzip'

atlantis_installer 'atlantis' do
  version '0.4.5'
  checksum 'ca3d237a75f76e08cf4d8a33eba8aaceefeee8a21c4bc81ed971e88350e372b5'
  action :install
end

terraform_installer 'terraform' do
  version '0.11.7'
  checksum '6b8ce67647a59b2a3f70199c304abca0ddec0e49fd060944c26f666298e23418'
  action :install
end
