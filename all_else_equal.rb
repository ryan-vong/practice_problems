# Write a method all_else_equal that takes in an array of numbers.
# The method should return a number of the array that is equal to the sum of all the other elements of the array.
# If there is no such number, the method should return false.


# create a helper method to sum all the elements except the argument num
# iterate the array
# set the element as sum and pass the element to helper method sum_elements_except_me
# check if sum = sum_elements_except_me then set sum_num = element

def sum_elements_except_me(arr, number)
  sum = 0

  arr.each do |num|
    if num != number
      sum += num
    end
  end

  return sum
end

# puts sum_elements_except_me([2, 4, 3, 10, 1], 10)

def all_else_equal(arr)
  sum_num = 0

  arr.each do |num|
    sum_num = num
    if sum_num == sum_elements_except_me(arr, num)
      return sum_num
    end
  end

  return false

end


puts all_else_equal([2, 4, 3, 10, 1]) #=> 10
puts all_else_equal([6, 3, 5, -9, 1]) #=> 3
puts all_else_equal([1, 2, 3, 4])     #=> false
