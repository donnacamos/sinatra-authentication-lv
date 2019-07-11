class UsersController < ApplicationController 
  get '/signup' do 
    erb :"users/new" 
  end 
  
  post 'user/new' do 
    @user = User.new 
    @user.email = params[:email] 
    @user.password = params[:password] 
    if @user.save 
      redirect '/login' 
    else 
      erb :"users/new"  
    end 
  end 
end 