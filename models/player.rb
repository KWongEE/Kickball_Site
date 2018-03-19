require_relative "./team_data"
require 'pry'
class Player

  attr_accessor :name, :position, :team_name, :players

  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
    @players = []
  end

  def add_player
    TeamData::ROLL_CALL.each do |team|
        team.each do |role|
          binding.pry
          
        end
      end

  end
  # def self.all
  #   @players = [123]
  #
  #       example = Player.new(:role,role, team)
  #       @players << example
  #       break
  #     end
  #   end
  # end

  # @players << Player.all
end
