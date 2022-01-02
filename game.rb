class Game
  attr_reader :p1, :p2, :current_player, :next_player

  def initialize
    @p1 = Player.new('Player1')
    @p2 = Player.new('Player2')
    @current_player = p1
    @next_player = p2
  end

  def turn
    if current_player.name == "Player1"
      @current_player = p2
      @next_player = p1
    else
      @current_player = p1
      @next_player = p2
    end
  end

end