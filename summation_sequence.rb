# A number's summation is the sum of all positive numbers less than or equal to the number.
# For example: the summation of 3 is 6 because 1 + 2 + 3 = 6,
# the summation of 6 is 21 because 1 + 2 + 3 + 4 + 5 + 6 = 21.
#
# Write a method summation_sequence that takes in a two numbers: start and length.
# The method should return an array containing length total elements.
# The first number of the sequence should be the start number.
# At any point, to generate the next element of the sequence we take the summation of the previous element.
# You can assume that length is not zero.

# iterate length times to create the result array
# create a helper function number_summation(num) to find summation for a number
# starting with number start
# next element will take summation of previous number
def summation_sequence(start, length)
  new_arr = [start]

  # (1...length).each do |n|
  #   new_arr << number_summation(new_arr[-1])
  # end

  # alternate solution
  while new_arr.length < length
    new_arr << number_summation(new_arr[-1])
  end

  return new_arr
end

def number_summation(num)
  sum = 0
  (1..num).each { |n| sum += n}

  return sum
end

# print number_summation(3) #=> 6
# puts
# print number_summation(6) #=> 21
# puts

print summation_sequence(3, 4) # => [3, 6, 21, 231]
puts
print summation_sequence(5, 3) # => [5, 15, 120]
puts
