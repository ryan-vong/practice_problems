# Write a method pyramid_sum that takes in an array of numbers representing the base of a pyramid.
# The function should return a 2D array representing a complete pyramid with the given base.
# To construct a level of the pyramid, we take the sum of adjacent elements of the level below.

# create a method to take an array and return an array of adjacent nums being added
# iterate through array
#

# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def adjacent_sum(arr)
  adjacent_arr = []

  if arr.length == 1
    return arr
  end

  i = 0
  while i < (arr.length - 1)
    adjacent_arr << arr[i] + arr[i+1]
    i += 1
  end

  return adjacent_arr
end

# p adjacent_sum([6]) #=> [5, 10]

def pyramid_sum(base)
  next_base = base
  pyramid = [base]

  # i = 0
  # while i < (base.length - 1)
  #   next_arr = adjacent_sum(next_base)
  #   pyramid.unshift(next_arr)
  #
  #   next_base = next_arr
  #   i += 1
  # end

  # alternate solution
  while pyramid.length < base.length
    next_base = pyramid[0]
    next_arr = adjacent_sum(next_base)
    pyramid.unshift(next_arr)

    next_base = next_arr
  end

  return pyramid
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts
