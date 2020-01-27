def merge_sort(array)
  if array.length < 2
    array
  else
    left_side = merge_sort(array[0..(array.length / 2) - 1])
    right_side = merge_sort(array[array.length / 2..array.length - 1])
    merge(left_side, right_side)
  end
end

def merge(array1, array2, merged_array = [])
  loop do
    return merged_array if array1.empty? && array2.empty?

    if array1.empty?
      merged_array << array2.shift
    elsif array2.empty?
      merged_array << array1.shift
    else
      array1[0] < array2[0] ? merged_array << array1.shift : merged_array << array2.shift
    end
  end
end

array = [4, 1, 7, 6, 3, 9, 5, 10, 2]

puts merge_sort(array)