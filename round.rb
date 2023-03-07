# Round is initialized with the current player, and 2 random numbers 1-20
# new round is called if players lives are more than 0 
# Question is logged and input from player is saved as answer
# If answer is correct log You are correct
# Otherwise log Seriously no and remove a life from player

class Round 
  attr_reader :player, :num1, :num2

  def initialize(player)
    @player = player
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def new_round
    puts "#{player.name}: What does #{num1} plus #{num2} equal?"
    print "> "
    answer = $stdin.gets.chomp

    if answer.to_i == num1 + num2
      puts "#{player.name}: YES! You are correct."
    else
      puts "#{player.name}: Seriously? No!"
      player.lose_life
    end
  end
end
