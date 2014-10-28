include_recipe "apt"

apt_repository 'calamari' do
  uri          'http://chef-server.cloud.dev.phx3.gdg:3389/'
  arch         'amd64'
  components   ['stable', 'main']
  key          'http://chef-server.cloud.dev.phx3.gdg:3389/myrepo.gpg'
end
