# Set staging options before bringing in multistage code—it's just the way the
# extension works
set :stages, %w(staging production)
set :default_stage, 'staging'
require 'capistrano/ext/multistage'

default_run_options[:pty]   = true
ssh_options[:forward_agent] = true

require 'bundler/capistrano'

# user settings
set :use_sudo, false

# application details
set :application, "com.twincresttech.www"
set :domain,      "ve.eyequeue.us"

# repository elsewhere
set :scm,        :git
set :repository, "git@github.com:rapidturtle/#{application}.git"
set :deploy_via, :remote_cache

server "#{domain}", :app, :web, :db, primary: true

namespace :deploy do
  %w[start stop restart].each do |command|
    desc "#{command.capitalize} unicorn server"
    task command, roles: :app, except: { no_release: true } do
      run "/etc/init.d/unicorn_#{application} #{command}"
    end
  end
  
  task :setup_config, roles: :app do
    sudo "ln -nfs #{shared_path}/config/nginx.conf /usr/local/nginx/sites-enabled/#{application}.conf"
    sudo "ln -nfs #{shared_path}/config/unicorn_init.sh /etc/init.d/unicorn_#{application}"
    run "mkdir -p #{shared_path}/config"
    run "mkdir -p #{shared_path}/public/uploads"
    put File.read("config/database.example.yml"), "#{shared_path}/config/database.yml"
    put File.read("config/unicorn_init.example.sh"), "#{shared_path}/config/unicorn_init.sh"
    puts "Now edit the config files in #{shared_path}."
  end
  after "deploy:setup", "deploy:setup_config"
  
  namespace :config do
    desc "Create symlink to shared files and folders on each release."
    task :symlink do
      run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
      run "ln -nfs #{shared_path}/public/uploads #{release_path}/public/uploads"
    end
  end
   
  after "deploy:finalize_update", "deploy:config:symlink"
  after "deploy:restart", "deploy:cleanup"
end
