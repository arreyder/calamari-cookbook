include_recipe 'salt::minion'
include_recipe 'ceph::install'

repo = partial_search(:node, 'role:calamari_repo', 'fqdn'   => [ 'fqdn' ] }

file "/etc/salt/minion.d/calamari.conf" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  content node[:ceph][:calamari][:repo]
end
