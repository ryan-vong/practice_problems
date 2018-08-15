# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)

  rem1 = number2 % number1
  rem2 = number1 % number2

# determine which number is smaller
  if number1 < number2
    small = number1
    big = number2
  else
    small = number2
    big = number1
  end

  small_decrease = small

  if rem1 == 0
    return number1
  elsif rem2 == 0
    return number2
  else
    while small_decrease > 1
      if ((big % small_decrease) == 0) && ((small % small_decrease) == 0)
        return small_decrease
      end

      small_decrease -= 1
    end

  end

  return 1

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #greatest_commmon_factor")
puts("===============================================")
    puts(
      'greatest_common_factor(3, 9) == 3: ' +
      (greatest_common_factor(3, 9) == 3).to_s
    )
    puts(
      'greatest_common_factor(16, 24) == 8: ' +
      (greatest_common_factor(16, 24) == 8).to_s
    )
    puts(
      'greatest_common_factor(3, 5) == 1: ' +
      (greatest_common_factor(3, 5) == 1).to_s
    )
puts("===============================================")
