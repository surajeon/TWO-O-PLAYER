require_relative "Question_class"
require_relative "Player_class"

class Game
  attr_accessor :current_player, :player1, :player2
  def initialize()
    @player1 = Player.new
    @player2 = Player.new
    @current_player = @player1
  end

  def game_start()
    while @player1.score !=0 && @player2.score !=0
      question = Question.new
      question.get_question
      answer = question.get_answer

      if answer != true
        current_player.score -= 1
      end

      if current_player.score != 0
        puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
        puts "---New Turn---"
      end

      if current_player == player1
        @current_player = player2
      else 
        @current_player = player1
      end
    end

    winner()
    
  end

  def winner()
    puts "#{current_player} wins with #{current_player.score}/3"
    puts "---GAME OVER---"
    puts "Good Bye!"
  end
end