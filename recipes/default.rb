include_recipe "apt"

apt_repository 'calamari' do
  uri          'http://chef-server.cloud.dev.phx3.gdg:3389/'
  arch         'amd64'
  distribution 'stable'
  key          'http://chef-server.cloud.dev.phx3.gdg:3389/myrepo.gpg'
end
