# Write a method same_char_collapse that takes in a string and
# returns a collapsed version of the string.
# To collapse the string, we repeatedly delete 2 adjacent characters that are the same
# until there are no such adjacent characters.
# If there are multiple pairs that can be collapsed, delete the leftmost pair.
# For example, we take the following steps to collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

# loop through string
# check each character and its adjacent letter for equality
# if it's equal, then collapse two characters into one of the original string
# repeat loop til no repeated letters in string
# return the modified string

def same_char_collapse(str)
  new_str = ""

  i = 0
  while i < str.length
    # puts "original str = " + str
    # puts "length=" + str.length.to_s
    # puts "char=" + str[i]
    # puts "index=" + i.to_s
    if str[i] == str[i+1]  # found adjacent characters
      str[i..i+1] = ""  # delete 2 adjacent characters by replacing it with ""
      i = 0  # reset index
      next # skip to next iteration
    end

    i += 1
  end

  return str
end



# puts adjacent_letters_count("zzzxaaxy")

puts same_char_collapse("zzzxaaxy")   #=> "zy"
puts same_char_collapse("uqrssrqvtt") #=> "uv"
