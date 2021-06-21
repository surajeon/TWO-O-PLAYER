# game questions
class Questions
  attr_accessor :num1, :num2
  def initialize()
    @num1 = 0
    @num2 = 0
  end

  def random()
    (rans() * 20).floor()
  end

  def get_question
    puts "What does #{self.num1} plus #{seld.num2} equal?"
  end

  def get_answer
    answer = gets.chomp

    if answer.to_i == self.num1 + self.num2
      puts "YES! You are correct."      
    else
      puts "You bad"      
    end
  end  

  def set_num()
    @num1 = random()
    @num2 = random()
  end
end