require 'sinatra/base'

class App < Sinatra::Base
  get '/newteam' do
    erb :"newteam"
  end

  post '/team' do
    @team = Team.new 
    @team.team_name = params[:team]
    @team.team_name = params[:coach]
    @team.team_name = params[:point]
    @team.team_name = params[:shooting]
    @team.team_name = params[:smallfwd]
    @team.team_name = params[:powerfwd]
    
    erb :"team" 
  end

end
