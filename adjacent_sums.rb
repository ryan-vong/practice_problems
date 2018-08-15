# Write a method adjacent_sum that takes in an array of numbers and
# returns a new array containing the sums of adjacent numbers in the original array

# iterate through the array until length - 1
# each iteration, we add current number to adjacent number
def adjacent_sum(arr)
  new_arr = []

  i = 0
  while i < (arr.length - 1)
    new_arr << arr[i] + arr[i+1]
    i += 1
  end

  return new_arr
  # p new_arr
end



print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6]
puts
print adjacent_sum([8, 10, 6, 4, 7, 9]) # => [18, 16, 10, 11, 16]
