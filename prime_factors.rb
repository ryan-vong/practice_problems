# Write a method prime_factors that takes in a number and
# returns an array containing all of the prime factors of the given number.

# create a helper method is_prime?(num)
# iterate from 2..num
# if is_prime?(num) then add to array
def prime_factors(num)
  prime_arr = []

  (2..num).each do |n|
    if is_prime?(n) && num % n == 0
      prime_arr << n
    end
  end

  return prime_arr
end

def is_prime?(num)
  distinct_positive_factor = 0

  if num < 2
    return false
  end

  (1..num).each do |n|
    if num % n == 0
      distinct_positive_factor += 1
    end

    if distinct_positive_factor > 2
      return false
    end
  end

  return true
end

# puts is_prime?(12)

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts
