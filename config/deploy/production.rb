set :deploy_to, "/home/deploy"

server '127.0.0.1', user: 'deploy', roles: %w{web app db}