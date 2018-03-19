require_relative "./team_data"

class Team
  attr_reader :name

  def initialize(name)
   @name = name
  end

end
