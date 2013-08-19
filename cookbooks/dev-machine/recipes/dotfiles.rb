directory node[:dotfiles][:path] do
  action :create
  user node[:user]
  group node[:user]
end

template "/home/#{node[:user]}/.ssh/config" do
  source "sshconfig.erb"
  user node[:user]
  group node[:user]
end

git node[:dotfiles][:path] do
  repository node[:dotfiles][:repo]
  revision 'HEAD'
  action :sync
  user node[:user]
  group node[:user]
end

execute "Setup dotfiles" do
  action :run
  user node[:user]
  group node[:user]
  cwd node[:dotfiles][:path]
  env({ "HOME" => node[:dotfiles][:path] })
  command "make -C #{node[:dotfiles][:path]} -f Makefile -k setup"
end
