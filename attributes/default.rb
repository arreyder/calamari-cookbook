# TODO create a role for the calamari server and make this a search.
default['ceph']['calamari']['repo'] = "g1tlnebss04.test.glbt1.gdg"

# This is for the calamari packages.  Not sure how the above repo mechinism with salt is supposed to work need to figure it out and possibly remove this stuff, or the above.
default['calamari']['repo_url'] = 'http://chef-server.cloud.dev.phx3.gdg:3389/'
default['calamari']['repo_key'] = 'http://chef-server.cloud.dev.phx3.gdg:3389/myrepo.gpg'

