require 'Sinatra'
require 'sinatra/reloader' if development?
set :app_file, __FILE__

get '/form' do
  erb :form
end


post '/name' do
  if params[:message] == ""
    params[:message] = "_no_entry"
  end
  erb :name
end

