class PostsController < ApplicationController 
  
  get '/posts' do 
    "A list of publicly available posts." 
  end 
  
  get '/posts/new' 
  # checking to see if they're logged in
    if !session[:email] 
      redirect '/login' # redirecting if they aren't 
    else 
      "A new post form" # rendering if they are 
    end 
  end 
end 