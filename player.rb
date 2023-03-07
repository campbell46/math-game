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
