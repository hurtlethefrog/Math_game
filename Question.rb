class Question 
  attr_accessor :result
  def initialize
    @random1 = rand(20)
    @random2 = rand(20)
    @operator = ["-","+", "*", "/"].sample 
    @answer = answer(@operator)
    @player_answer = 0
  end
  def answer(operator)
    case operator
    when "-"
      @random1 - @random2
    when "+"
      @random1 + @random2
    when "*"
      @random1 * @random2
    when "/"
      @random1 / @random2
    end
  end
  def ask
    @question = "What is #{@random1} #{@operator} #{@random2}?\n"
    puts @question
    @player_answer = gets.chomp.to_f
  end
  def verify
    if @answer == @player_answer 
      puts "Correct! Good job!\n"
      true
    else
      puts "Incorrect! Bad job!\n"
      false
    end
  end
    # generates question then prints to terminal 
    # compares var to answer then either terminates or modifies score
end