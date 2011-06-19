# See http://unicorn.bogomips.org/Unicorn/Configurator.html for complete
# documentation.
app = "pairbug"
app_dir = "/var/www/#{app}"
worker_processes 4
working_directory "#{app_dir}/www"

# listen on both a Unix domain socket and a TCP port,
# we use a shorter backlog for quicker failover when busy
listen "/tmp/#{app}.socket", :backlog => 64

# nuke workers after 30 seconds instead of 60 seconds (the default)
timeout 30

# feel free to point this anywhere accessible on the filesystem
user 'nginx', 'www-data'

pid "#{app_dir}/pids/unicorn.pid"
stderr_path "#{app_dir}/logs/unicorn.stderr.log"
stdout_path "#{app_dir}/logs/unicorn.stdout.log"
