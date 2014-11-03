require 'rubygems'
require 'Sinatra'


get '/form' do
  erb :form
end


post '/name' do
  if params[:message] == ""
    params[:message] = "_no_entry"
  end
  erb :name
end

