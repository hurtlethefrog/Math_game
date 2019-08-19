require_relative "./Game.rb"
require_relative "./Question.rb"
require_relative "./Player.rb"

class Main 
  attr_accessor :player1, :player2, :game, :player_turn, :round_number
  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @game = Game.new
  end
  def start
    while @player1.get_score > 0 && @player2.get_score > 0 do
      player_turn = @game.get_player_turn[0]
      round_number = @game.get_player_turn[1]
      puts "The current round is #{round_number} and the scores are player1 with #{@player1.get_score}, and player2 with #{@player2.get_score}. \nIt is now player#{player_turn}'s turn to answer"
      current_question = Question.new
      current_question.ask
      if current_question.verify
        @game.new_turn
      else
        if player_turn == 1
          @player1.wrong
        else
          @player2.wrong
        end
        @game.new_turn
      end
    end
    if @player1.get_score == 0
      puts "Player1 loses, what a dumb!"
    else 
      puts "Player2 loses, what a dumb!"
    end
  end
end


start_game = Main.new()

start_game.start
