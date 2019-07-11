require "./config/environment.rb"

class ApplicationController < Sinatra::Base 
  config do 
    set :public_folder, 'public' 
    set :views, 'app/views' 
    enable :sessions
    set :session_secret, "auth_demo_lv" 
  end 
  
 helpers do 
  
    def logged_in? 
      !!session[:email] 
    end 
    
    def login(email) 
      if user = User.find_by(:email => email) 
        session[:email] = user.email
      else 
        redirect '/login' 
      end 
    end 
    
    def logout! 
      session.clear
    end 
  end 
end 