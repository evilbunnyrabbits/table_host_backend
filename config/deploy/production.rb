set :deploy_to, "/home/deploy"

server '192.168.86.45', user: 'deploy', roles: %w{web app db}