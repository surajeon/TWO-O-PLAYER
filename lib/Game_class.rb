require_relative "Question_class"

class Game
  attr_accessor :current_player, :player1, :player2
  def initialize()
    @player1 = player1
    @player2 = player2 
    @current_player = "player1"
  end

  def game_loop()
    question = Question.new
    while current_player.socre !=0
      question.get_question
      question.get_answer
    if current_player = player1
      @current_player = player2
    else 
      @current_player = player1
    end
  end

  def winner()
    puts "---GAME OVER---"
    puts "#{current_player} wins with #{current_player.score}/3"
  end
end