require 'sinatra'
require_relative 'recipe'

get '/' do
    redirect to('/home')
end

get '/home' do
    @recipes = Recipe.all
    erb :home
end

get '/createRecipeForm' do
    erb :createRecipeForm
end

get '/recipeUpdate/:id' do
    @recipe = Recipe.find(params[:id])
    erb :updateRecipeForm
end

post '/recipeUpdate/:id' do
    updateRecipe = Recipe.find(params[:id])
    updateRecipe.name = params[:name]
    updateRecipe.prep_time = params[:prep_time]
    updateRecipe.description = params[:description]
    updateRecipe.save
    redirect to('/home')
end

post '/createRecipe' do 
    newRecipe = Recipe.new
    newRecipe.name = params[:name]
    newRecipe.prep_time = params[:prep_time]
    newRecipe.description = params[:description]
    newRecipe.save
    redirect to('/home')
end


get '/deleteRecipe/:id' do
    recipe = Recipe.find(params[:id])
    recipe.delete
    redirect to('/home')
end