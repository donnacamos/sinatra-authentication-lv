class ApplicationController < Sinatra::Base 
  config do 
    set :public_folder, 'public' 
    set :views, 'app/views' 
  end 
  
  # test 
  get '/login' do 
    erb ":sessions/login" 
  end 
  
end 