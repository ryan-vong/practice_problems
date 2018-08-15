# Write a method `contains_pair_product?` that takes in an array and a target number.
# The method should return a boolean indicating whether or not a pair of elements of the
# array multiply together to result in the target.

# iterate array of numbers1
# inner iteration of array of numbers2
# if number1 * numbers2 == target, return true
# after both iterations are done
# return false
def contains_pair_product?(arr, target)
  arr.each_with_index do |num1, idx1|
    arr.each_with_index do |num2, idx2|
      if (idx2 > idx1) && (num1 * num2 == target)
        return true
      end
    end
  end

  return false

end

puts contains_pair_product?([1, 4, 3, 2], 8)      #=> true
puts contains_pair_product?([7, 5, 2, 4, 12], 12) #=> false
