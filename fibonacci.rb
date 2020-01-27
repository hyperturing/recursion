def fibonacci_recursive(number)
  return 0 if number.zero?
  return 1 if number == 1
  fibonacci_recursive(number - 1) + fibonacci_recursive(number - 2) if number > 1
end

def fibonacci_iterative(number)
  num1, num2 = 0, 1
  p num1, num2

  (number - 1).times do |index|
    next_num = num1 + num2

    p next_num
    num1 = num2
    num2 = next_num
  end
end

puts fibonacci_recursive(9)

fibonacci_iterative(9)