class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get'/' do 
    @recipes = Recipe.all
    erb :index
  end

  # code actions here!
  get '/recipes/new' do 
    erb :new
  end

  post '/recipes' do 
    @recipe = Recipe.create(name:params[:name],ingredients:params[:ingredients])
    redireict to "/recipes/#{@recipe.id}"
  end

   
  
end
