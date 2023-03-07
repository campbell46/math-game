# Player class keeps state of players name, short name and lives(3 to begin)
# Lose life method removes a life if question was answered incorrect

class Player
  attr_accessor :lives
  attr_reader :name, :short_name

  def initialize(name, short_name)
    @name = name
    @short_name = short_name
    @lives = 3
  end

  def lose_life
    self.lives -= 1
  end
end
