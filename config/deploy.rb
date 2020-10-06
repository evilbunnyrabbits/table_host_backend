# config valid for current version and patch releases of Capistrano
lock "~> 3.14.1"

set :stages, ["production"]
set :default_stage, "production"
set :ssh_options, {:forward_agent => true}

set :application, 'table_host'
set :repo_url, 'https://github.com/evilbunnyrabbits/table_host_backend.git'
set :user, "deploy"

set :linked_dirs, %w(my_shared_directory)

namespace :deploy do
  desc 'Print The Server Name'
  task :print_server_name do
    on roles(:app), in: :groups, limit:1 do
      execute "hostname"
    end
  end
end

after "deploy:updated", "deploy:print_server_name"