class Player
  attr_accessor :score, :player
  def initialize(num)
    @player = "player#{num}"
    @score = 3
  end
  def get_score
    @score
  end
  def wrong
    @score -= 1
  end
end