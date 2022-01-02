class Question
  attr_reader :nums, :math_types
  
  def initialize
    @nums = [*(1..20)]
    @math_types = ['plus', 'minus']
  end

  def generate(player)
    num1 = nums.sample
    num2 = nums.sample
    math_type = math_types.sample
    question = "#{player}: What does #{num1} #{math_type} #{num2} equal?"
    puts question
    answer = math_type == 'plus' ? num1 + num2 : num1 - num2
  end

end