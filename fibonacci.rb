def fibonacci_recursive(number)
  return 0 if number.zero?
  return 1 if number == 1

  fibonacci_recursive(number - 1) + fibonacci_recursive(number - 2) if number > 1
end
