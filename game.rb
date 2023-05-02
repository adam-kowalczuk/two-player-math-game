require './player.rb'
require './question.rb'

@player1 = Player.new('Player 1')
@player2 = Player.new('Player 2')

def turn (player)
  question = Question.new

  puts "#{player.name}: what does #{question.num1} plus #{question.num2} equal?"

  answer = $stdin.gets.chomp

  if question.correct_answer?(answer)
    puts "#{player.name}: YES! You are correct!"
  else 
    puts "#{player.name}: Seriously? No!"
    player.lose_life
  end
end

loop do
  turn(@player1)
  puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  break puts "Player 2 wins with a score of #{@player2.lives}/3" if @player1.game_over?

  puts "---NEW TURN---"

  turn(@player2)
  puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  break puts "Player 1 wins with a score of #{@player1.lives}/3" if @player2.game_over?

  puts "---NEW TURN---"
end

puts "---GAME OVER---"
puts "Thanks for playing!"