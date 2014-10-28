include_recipe 'salt::minion'
include_recipe 'ceph::install'

file "/etc/salt/minion.d/calamari.conf" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  content node[:ceph][:calamari][:repo]
end
