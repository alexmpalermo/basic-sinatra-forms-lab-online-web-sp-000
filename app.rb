require 'sinatra/base'

class App < Sinatra::Base
  get '/newteam' do
    erb :"newteam"
  end

  post '/team' do
    @team = Team.new 
    @team.name = params[:name]
    @team.coach = params[:coach]
    @team.point = params[:pg]
    @team.shooting = params[:sg]
    @team.smallfwd = params[:sf]
    @team.powerfwd = params[:pf]
    @team.center = params[:c]
    
  end

end
