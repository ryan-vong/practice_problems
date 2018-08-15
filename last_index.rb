
# iterate the string from the end
# once I find the character, I return the index
def last_index(str, char)
	i = str.length - 1
  	while i >= 0
      if str[i] == char
        return i
      end
      i -= 1
    end

  return nil
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
