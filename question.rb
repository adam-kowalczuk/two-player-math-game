class Question 
  def num1
    @num1 = rand(1..20)
  end
end

question = Question.new
question.num1
p question