# set path to application
app_dir = File.expand_path("/u01/apps/qwinix/doctalk/current",

__FILE__)
#shared_dir = "#{app_dir}/shared"
working_directory app_dir

# Set unicorn options
worker_processes 2
preload_app true
timeout 30
# Set up socket location
listen "/u01/apps/qwinix/doctalk/shared/sockets/unicorn.sock", :backlog
=> 64
# Logging
stderr_path "/u01/apps/qwinix/doctalk/current/log/unicorn.stderr.log"
stdout_path "/u01/apps/qwinix/doctalk/current/log/unicorn.stdout.log"
# Set master PID location
pid "/u01/apps/qwinix/doctalk/shared/pids/unicorn.pid"