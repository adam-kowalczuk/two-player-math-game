class Question 
  # Will need to read num1 and num2 outside of class
  attr_reader :num1, :num2

  # Generate two random numbers between 1 and 20
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  # Check whether answer supplied matches sum of both numbers
  def correct_answer?(answer)
    answer == @num1 + @num2
  end
end
