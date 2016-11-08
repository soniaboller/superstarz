class SuperstarController < ApplicationController

  get '/' do
    # get all
    Superstar.all.to_json
  end

  get '/:id' do
    # get by id
    @id = params[:id] # grabs id from URL
    Superstar.find(@id).to_json
  end

  post '/' do
    # create
    @name = params[:name]
    @talent = params[:talent]
    @outfit = params[:outfit]

    @model = Superstar.new
    @model.name = @name
    @model.talent = @talent
    @model.outfit = @outfit
    @model.save

    # place a breakpoint in ruby!!
    # binding.pry
    # ^ code stops here
    @model.to_json
  end

  patch '/:id' do
    # update
    @id = params[:id]
    @name = params[:name]
    @talent = params[:talent]
    @outfit = params[:outfit]
    @model = Superstar.find(@id)
    @model.name = @name
    @model.talent = @talent
    @model.outfit = @outfit
    @model.save
    @model.to_json
  end

  delete '/:id' do
    # delete
    @id = params[:id]
    @model = Superstar.find(@id)
    @model.destroy
    {:message => "item of id " + @id + " was deleted"}.to_json
  end

  # get '/fab' do
  #   # use activerecord for database
  #   @christopher = Superstar.new
  #   @christopher.talent = 'socialite'
  #   @christopher.name = 'Christopher'
  #   @christopher.outfit = 'blue sweater swag'
  #   @christopher.save
  #   @christopher.to_json
  #
  #   # CRUD -- create, read, update, delete
  # end
end