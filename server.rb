require "sinatra"
require "pry" if development? || test?
require "sinatra/reloader" if development?

require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/players" do
  @players
end

 get "/teams" do
   @teams
   @team_array  = []
   TeamData::ROLL_CALL.each do |team|
     @team_array << team
   end
   erb :index
 end

 get "/teams/:team_name" do
   @team_name = params[:team_name]
   @players_array  = []
   TeamData::ROLL_CALL[@team_name.to_sym].each do |player|
     @players_array << player
   end
   erb :show
 end
