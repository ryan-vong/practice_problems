# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  num_string = num.to_s
  result = ""

  i = 0
  while i < num_string.length
    number = num_string[i].to_i
    prev_number = num_string[i-1].to_i
    remainder = number % 2
    prev_remainder = prev_number % 2
    puts ("num = " + num_string[i])
    puts ("remainder = " + remainder.to_s)
    puts ("previous_remainder = " + prev_remainder.to_s)

    if remainder != 0
      if (i == 0)
        result += num_string[i] + "-"
      elsif (i == (num_string.length - 1)) && (prev_remainder == 0)
        result += "-" + num_string[i]
      elsif (i == (num_string.length - 1)) && (prev_remainder != 0)
        result += num_string[i]
      elsif (prev_remainder != 0)
        result += num_string[i] + "-"
      end
    else
      result += num_string[i]
    end

    puts("result = " + result)
    i += 1
  end

  return result
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #dasherize_number")
puts("===============================================")
    puts(dasherize_number(203))
    puts(
      'dasherize_number(203) == "20-3": ' +
      (dasherize_number(203) == '20-3').to_s
    )
    puts(dasherize_number(303))
    puts(
      'dasherize_number(303) == "3-0-3": ' +
      (dasherize_number(303) == '3-0-3').to_s
    )
    puts(dasherize_number(333))
    puts(
      'dasherize_number(333) == "3-3-3": ' +
      (dasherize_number(333) == '3-3-3').to_s
    )
    puts(dasherize_number(3223))
    puts(
      'dasherize_number(3223) == "3-22-3": ' +
      (dasherize_number(3223) == '3-22-3').to_s
    )
puts("===============================================")
