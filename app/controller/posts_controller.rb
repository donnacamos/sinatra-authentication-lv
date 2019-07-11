class PostsController < ApplicationController 
  
  get '/posts' do 
    "A list of publicly available posts." 
  end 
  
  get '/posts/new' 
  # checking to see if they're logged in
    if !logged_in? 
      redirect '/login' # redirecting if they aren't 
    else 
      "A new post form" # rendering if they are 
    end 
  end 
  
  get '/posts/:id/edit' do
     if !logged_in?
      redirect '/login' # redirecting if they aren't 
    else 
      "An edit post form" # rendering if they are 
    end 
  end
end 