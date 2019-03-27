require 'sinatra/base'

class App < Sinatra::Base
  get '/newteam' do
    erb :"newteam"
  end

  post '/team' do
    @team = Team.new 
    @team.name = params[:name]
    @team.coach = params[:coach]
    @team.point = params[:point]
    @team.shooting = params[:shooting]
    @team.smallfwd = params[:smallfwd]
    @team.powerfwd = params[:powerfwd]
    @team.center = params[:center]
    
  end

end
