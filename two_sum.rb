# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)

  result = nil

  i = 0
  while i < nums.length
    j = nums.length - 1
    while i < j
      sum = nums[i].to_i + nums[j].to_i
      if sum == 0
        result = [i, j]
        return result
      end
      j -= 1
    end

    i += 1
  end

  return result
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #two_sum")
puts("===============================================")
    puts(
      'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
    )
    puts(
      'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
    )
puts("===============================================")
