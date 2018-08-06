
class SportsTeam

  attr_reader(:name, :players, :coach)
  attr_writer(:coach)

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

#  def name
#    return @name
#  end
#
#  def players
#    return @players
#  end
#
#  def coach
#    return @coach
#  end
#
#  def coach=(new_name)
#    @coach = new_name
#  end
end
