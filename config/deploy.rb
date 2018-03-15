# config valid for current version and patch releases of Capistrano

set :rbenv_ruby, "2.3.1p112"
set :application, "Doctalk"
set :repo_url, "git@github.com:painfulsin/Doctalk.git"
# set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle}
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/security.yml')
set :default_env, { path: "/home/deploy/.rbenv/shims:/home/deploy/.rbenv/bin:$PATH" }
# set :keep_releases, 5
# set :deploy_via,      :remote_cache


# lock "~> 3.10.1"


# set :application, 'Doctalk'
# set :repo_url, 'git@github.com:painfulsin/Doctalk.git'
# set :scm, :git

# set :format, :pretty

# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}
# set :linked_files, %w{config/database.yml config/security.yml}

# set :default_env, { path: "~/.rbenv/shims:~/.rbenv/bin:$PATH" }

# set :keep_releases, 5
# set :deploy_via,      :remote_cache


# # set :bundle_gemfile, -> { release_path.join('Gemfile') }
# # set :bundle_dir, -> { shared_path.join('bundle') }
# # set :bundle_flags, '--deployment --quiet'
# # set :bundle_without, %w{development test}.join(' ')
# # set :bundle_binstubs, -> { shared_path.join('bin') }
# # set :bundle_roles, :all
# # set :bundle_bins, %w(gem rake rails)
# set :bundle_binstubs, nil


# set :rbenv_ruby, "2.3.1p112"
# set :application, "ec2_application_launch"
# set :repo_url, "git@github.com:Qwinix/EC2_Launch_Applications_Rails.git"
# set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle}
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
# set :default_env, { path: "~/.rbenv/shims:~/.rbenv/bin:$PATH" }
# set :keep_releases, 5
# set :deploy_via,      :remote_cache


# set :whenever_roles, :all
# path, where nginx pid file will be stored (used in logrotate recipe)
# default value: `"/run/nginx.pid"`
# set :nginx_pid, "/run/nginx.pid"

# # nginx config file location
# # centos users can set `/etc/nginx/conf.d`
# # default value: `/etc/nginx/sites-available`
# set :nginx_config_path, "/etc/nginx/sites-available"

# # path, where unicorn pid file will be stored
# # default value: `"#{current_path}/tmp/pids/unicorn.pid"`
# set :unicorn_pid, "#{current_path}/tmp/pids/unicorn.pid"

# # path, where unicorn config file will be stored
# # default value: `"#{shared_path}/config/unicorn.rb"`
# set :unicorn_config, "#{shared_path}/config/unicorn.rb"

# # path, where unicorn log file will be stored
# # default value: `"#{shared_path}/config/unicorn.rb"`
# set :unicorn_log, "#{shared_path}/config/unicorn.rb"

# # user name to run unicorn
# # default value: `user` (user varibale defined in your `deploy.rb`)
# set :unicorn_user, "deploy"

# # number of unicorn workers
# # default value: 2
# set :unicorn_workers, 2


