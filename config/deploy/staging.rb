set :user,           "stage"
set :branch,         "develop"

set :deploy_to,      "/home/stage/#{application}"
set :rails_env,      "staging"
set :bundle_without, [:development, :test, :production]
