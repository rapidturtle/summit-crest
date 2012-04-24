set :user,           "deploy"
set :branch,         "master"

set :deploy_to,      "/home/deploy/#{application}"
set :rails_env,      "production"
set :bundle_without, [:development, :test, :staging]
