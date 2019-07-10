require_relative './config/environment'

require './config/environment' 

if ActiveRecord::Migrate.needs_migration? 
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'  
end 

use Rack::MethodOverride 
run ApplicationController 