class Player 

  # Set player name and number of lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  # Decrease player lives by 1 
  def lose_life
    @lives -= 1
  end

  # Check if number of lives equals 0
  def game_over?
    @lives == 0
  end
end

jeff = Player.new('Jeff')
jeff.lose_life
puts jeff.game_over?