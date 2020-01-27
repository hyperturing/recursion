roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

reverse_roman_mapping = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

def append(array, n)
  return array if n.negative?

  array.push(n)
  append(array, n - 1)
end

def factorial(number)
  number.positive? ? number * factorial(number - 1) : 1
end

def palindrome?(string)
    return string[0] == string[-1]

    palindrome?(string[1..(string.size)])
    true
end

def bottles_on_the_wall(n)
  if n == 0
    puts "No more bottles of dew on the wall"
  else
    puts "#{n} bottles of dew on the wall"
    bottles_on_the_wall(n - 1)
  end
end

def fibonacci(n)
  return 0 if n.zero?
  return 1 if n == 1
  fibonacci(n - 1) + fibonacci(n - 2) if n > 1
end

def flatten(array, results = [])
  array.each do |element|
    if element.class == Array
      flatten(element, results)
    else
      results << element
    end
  end
  results
end

def int_to_roman(num, roman_mapping, result = '', start = 0)
  return result if num.zero?

  repetition, num = num.divmod(roman_mapping.keys[start])
  result += roman_mapping.values[start] * repetition
  int_to_roman(num, roman_mapping, result, start += 1)
end

def roman_to_int(string, reverse_roman_mapping, result = 0)
  if string.empty?
    result
  else
    result += reverse_roman_mapping[string[0]]
    roman_to_int(string[1..string.length], reverse_roman_mapping, result)
  end
end

#puts append([], 4)

#puts factorial(4)

#puts palindrome?("madam")

#puts fibonacci(2)

#puts flatten([[1, 2], [3, 4]] )
#puts flatten([[1, [8, 9]], [3, 4]])

roman_num = int_to_roman(4592, roman_mapping)

puts roman_to_int(roman_num, reverse_roman_mapping)