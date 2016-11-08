class SuperstarController < ApplicationController

  get '/' do
    {:message => "all items soon"}.to_json
  end

  get '/fab' do
    # use activerecord for database
    @christopher = Superstar.new
    @christopher.talent = 'socialite'
    @christopher.name = 'Christopher'
    @christopher.outfit = 'blue sweater swag'
    @christopher.save
    @christopher.to_json
    
    # CRUD -- create, read, update, delete
  end
end