require './config/environment'
require 'pry'
use Rack::MethodOverride
binding.pry
if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

run ApplicationController
