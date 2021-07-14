# https://www.codequizzes.com/ruby/beginner/modules-classes-inheritance

module MathHelper
  def exponent(a, b)
    a ** b
  end
end

class Calculator
  include MathHelper
  def square_root(num)
    exponent(num, 0.5)
  end
end

test = Calculator.new
puts test.square_root(16)
