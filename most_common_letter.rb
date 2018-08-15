# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  most_count = nil
  most_common = nil

  i = 0
  while i < string.length
    value = string[i]

    j = 0
    count = 0
    while j < string.length
      if value == string[j]
        count += 1
      end
      j += 1
    end

    if (most_count == nil || count > most_count)
      most_count = count
      most_common = value
    end

    i += 1
  end

  return [most_common, most_count]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #most_common_letter")
puts("===============================================")
    puts(
      'most_common_letter("abca") == ["a", 2]: ' +
      (most_common_letter('abca') == ['a', 2]).to_s
    )
    puts(
      'most_common_letter("abbab") == ["b", 3]: ' +
      (most_common_letter('abbab') == ['b', 3]).to_s
    )
puts("===============================================")
