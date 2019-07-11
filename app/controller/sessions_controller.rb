class SessionsController < ApplicationController 
  
   get '/login' do 
    erb :"sessions/login" 
  end 
  
  post "/sessions" do 
    login(params[:email])  
    redirect '/posts' 
  end
  
  get '/logout' do 
    logout! 
  end 
  
end 