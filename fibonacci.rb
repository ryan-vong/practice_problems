# The fibonacci sequence is a sequence of numbers whose first and second elements are 1.
# To generate further elements of the sequence we take the sum of the previous two elements.
# For example the first 6 fibonacci numbers are 1, 1, 2, 3, 5, 8.
#
# Write a method fibonacci that takes in a number length and returns the fibonacci sequence up to the given length.


# create a sequence array of length length using a while loop
# sequence array has first two elements as 1
# create a helper function to generate the next fibonacci number, we take sum of previous elements
def fibonacci(length)

  if length < 1
    return []
  elsif length == 1
    return [1]
  end

  seq = [1,1]

  while seq.length < length
    seq << seq[-1] + seq[-2]
  end

  return seq

end



print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts
