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
      session[:email] = email
    end 
    
    def logout! 
      session.clear
    end 
  end 
end 