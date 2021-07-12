require 'sinatra'
# routes = request method + resource path

todos = ["Go for a walk", "Drink Coffee", "Work", "Sleep"]

get "/" do 
    "<h1>Hello World</h1>"
end


get "/hello" do 
    @name = "Sree"
    erb :hello
end


get '/msg' do
   redirect to('/hello') 
end


get "/todos" do
    @title = "Todos"
    @todo = todos
    erb :task
end

get '/data/:id' do
    @title = "Gallery"
    num = params[:id].to_i
    @sources = []
    counter = 88
        num.times do
            @sources << "https://unsplash.it/200/200?random=#{counter}"
            counter += 1
        end
    erb :pic
end
