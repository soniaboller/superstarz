require 'sinatra/base'

# controllers
require './controllers/application_controller'
require './controllers/superstar_controller'

# models
require './models/superstar'

map('/') {run ApplicationController}
map('/api/superstars') {run SuperstarController}

before '/*' do
  puts "route log:"
  puts request.host
  puts request.params
  puts request.path
  puts request.body
end

after '/*' do
  puts "completed route log:"
  puts response.body
  puts response.status
end