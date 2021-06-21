# player's 

class Player
  attr_accessor :score

  def initialize()
    @score = 3
    @@num_players += 1
    @player_num = @@num_players
  end

  def score()
    self.score
  end

  def to_s
    "Player #{@player_num}"
  end
end

player = Player.new("hello")

puts player.player_name

