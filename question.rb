class Question 
  def generate_numbers
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

end

question = Question.new
question.generate_numbers
p question