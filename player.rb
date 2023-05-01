class Player 
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
end

jeff = Player.new('Jeff')
jeff.lose_life
p jeff