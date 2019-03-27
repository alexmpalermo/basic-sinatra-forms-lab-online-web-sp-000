require 'sinatra/base'

class App < Sinatra::Base
  get '/newteam' do
    erb :"newteam"
  end

  post '/team' do
    @team = Team.new 
    @team.team_name = params[:team]
    
    erb :"team" 
  end

end
