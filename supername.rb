require 'rubygems'
require 'sinatra'
require 'bundler/setup'
require 'executable-hooks' 


get '/index' do
  erb :index
end


post '/name' do
  if params[:message] == ""
    params[:message] = "_no_entry"
  end
  erb :name
end

