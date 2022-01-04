class Question
  attr_accessor :num1, :num2
  def initialize
  @num1 = (rand 20)
  @num2 = (rand 20)
  @total = @num1.to_i + @num2.to_i 
  end
  def question(name)
    puts (name + ": What does " + @num1.to_s + " plus " + @num2.to_s + " equal?" )
  end 
  def answer(input)
    input.to_i == @total
  end
end