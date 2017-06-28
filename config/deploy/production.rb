#, user and IP address of deployment server
# role :name, %{[user]@[IP adde.]}
#config/deploy/production.rb
#Set user và và server_name của bạn
set :user, 'deployer2'
set :server_name, '54.169.50.223'
#Set branch trên Git mà bạn muốn deploy
set :branch, 'master'
#Set môi trường, ở đây mình thiết lâp cho môi trường production
set :rails_env, 'production'
set :bundle_flags, "--no-deployment"
role :app, %w{deployer2@54.169.50.233}
role :web, %w{deployer2@54.169.50.223}
role :db,  %w{deployer2@54.169.50.223}

# Define server(s)
server '54.169.50.223', user: 'deployer2', roles: %w{web}

# SSH Options
# See the example commented out section in the file
# for more opt
# SSH Options
# See the example commented out section in the file
# for m
