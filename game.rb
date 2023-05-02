require './player.rb'
require './question.rb'

class Game 

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end

  def turn (player)
    question = Question.new

