class Game 
  attr_accessor :player_turn
  def initialize
    @player_turn = [1, 1]
    puts "Welcome to Math Game, a game where you use math \n ------------------- \nThe first to answer three questions incorrectly loses. Good Luck!"
  end
  # player_turn var
  def new_turn
    @player_turn[0] = @player_turn[0] == 1 ? 2 : 1    
    @player_turn[1] += 1
  end
  def get_player_turn
    @player_turn
  end
  # strings that output on game start, success, failure, and game end
    
end