# player's 

class Player
  attr_accessor :score
  @@num_players = 0
  def initialize()
    @score = 3
    @@num_players += 1
    @player_num = @@num_players
  end

  def to_s
    "Player #{@player_num}"
  end
end

# player = Player.new("hello")

# puts player.player_name

