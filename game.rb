class Game 
  attr_accessor :player1, :player2
  @@turns = 0

  def initialize
    @player1 = Player.new("Player 1", "P1")
    @player2 = Player.new("Player 2", "P2")
    start_game
  end

  def start_game
    while player1.lives > 0 && player2.lives > 0
      @@turns += 1
      current_player = @@turns.odd? ? player1 : player2
      round = Round.new(current_player)
      round.new_round
      
      puts "#{player1.short_name}: #{player1.lives}/3 vs #{player2.short_name}: #{player2.lives}/3"
      if current_player.lives > 0
        puts "----- NEW TURN -----" 
      else
        winner = current_player.short_name == "P1" ? player2 : player1
        puts "#{winner.name} wins with a score of #{winner.lives}/3"
        puts "----- GAME OVER -----"
        puts "Good Bye!"
      end
    end
  end
end


