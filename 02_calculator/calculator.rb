#write your code here
# Addition
def add first_operand, second_operand
  first_operand + second_operand
end

# Subtraction
def subtract first_operand, second_operand
  first_operand - second_operand
end

# Summation
def sum array
  total = 0
  array.each do |number|
    total += number
  end
  total
end

# Multiplication
def multiply array
  total = 1
  array.each do |number|
    total *= number
  end
  total
end

# Power of
def power first_operand, second_operand
  first_operand ** second_operand
end

# Factorial
def factorial number
  if(number <= 1)
    1
  else
    factorial(number - 1) * number
  end
end
