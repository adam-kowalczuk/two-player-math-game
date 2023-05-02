class Game
  def initialize
    # Create two new players
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    # Store both players in an array that will be reversed after every turn to decide current player
    @players = [@player1, @player2]
  end

  # Run player through an entire turn
  def turn(player)
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

  # Start the game
  def play
    # Run loop until one of the players loses
    loop do
      # The player at index 0 in the @players array takes a turn (this will be @player1 when game is started)
      turn(@players[0])
      # After their turn, provide a lives count for each player
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      # Break out of the loop if current player has no remaining lives
      break puts "#{@players[1].name} wins with a score of #{@players[1].lives}/3" if @players[0].game_over?

      # Display on each new turn
      puts '---NEW TURN---'

      # Reverse elements in @players array. The player previously at index 1 will now be at index 0, and it will be their turn
      @players.reverse!
    end

    # Once there is a victor, display below messages and end game
    puts '---GAME OVER---'
    puts 'Thanks for playing!'
  end
end
