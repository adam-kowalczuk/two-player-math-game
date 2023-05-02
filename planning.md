# Classes

- Player
- Question
- Game

## Player

- states: name, lives

- behaviours:
  - initialize (name (will need name parameter) and lives)
  - wrong_answer? (lives -= 1)
  - game_over? (lives = 0)

## Question

- states: numbers (num1, num2)
- behaviours:
  - generate random number between 1 and 20 (for both num1 and num2)
  - correct_answer (answer == num1 + num2 ?), will need answer parameter

## Game

- will contain the game loop
- will instantiate players
- will set new turn
- will handle answer inputs
- will instantiate new questions (within each turn)
