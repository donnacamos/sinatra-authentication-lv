class ApplicationController < Sinatra::Base 
  config do 
    set :public_folder, 'public' 
    set :views, 'app/views' 
  end 
  
end 