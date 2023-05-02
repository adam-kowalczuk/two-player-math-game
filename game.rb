require './player.rb'
require './question.rb'

class Game
  def play
    # Create two new players
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')

    # Run player through an entire turn
    def turn (player)
      # Create a new question
      question = Question.new

      # Prompt player with new question
      puts "#{player.name}: what does #{question.num1} plus #{question.num2} equal?"

      # Store answer via CL input
      answer = $stdin.gets.chomp

      # Check if player's answer is correct
      if question.correct_answer?(answer)
        puts "#{player.name}: YES! You are correct!"
      else 
        puts "#{player.name}: Seriously? No!"
        # If incorrect, decrease player lives by 1
        player.lose_life
      end
    end

    # Run loop until one of the players loses
    loop do
      # Player 1 goes first
      turn(@player1)
      # After their turn, provide a lives count for each player
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      # Break out of the loop if Player 1 has no remaining lives
      break puts "Player 2 wins with a score of #{@player2.lives}/3" if @player1.game_over?

      puts "---NEW TURN---"

      # Now it's Player 2's turn 
      turn(@player2)
      # After their turn, provide a lives count for each player
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      # Break out of the loop if Player 2 has no remaining lives
      break puts "Player 1 wins with a score of #{@player1.lives}/3" if @player2.game_over?

      # If neither player had won, start a new round
      puts "---NEW TURN---"
    end

    # Once there is a victor, display below messages and end game
    puts "---GAME OVER---"
    puts "Thanks for playing!"
  end
end