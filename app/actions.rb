require 'json'
require 'sinatra/content_for'

get '/' do
  erb :index
end

get '/api/v1/music' do
  content_type :json
  song = Song.first
  song.to_json
end
