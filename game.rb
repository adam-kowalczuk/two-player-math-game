require './player.rb'
require './question.rb'

@player1 = Player.new('Player 1')
@player2 = Player.new('Player 2')

def turn (player)
  question = Question.new

  puts "#{player.name}: what does #{question.num1} plus #{question.num2} equal?"

  answer = $stdin.gets.chomp

  if question.correct_answer?(answer)
    puts "Correct!"
  else 
    puts "Wrong answer! You lose a life!"
    player.lose_life
  end
end

