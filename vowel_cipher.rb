# Write a method vowel_cipher that takes in a string and
# returns a new string where every vowel becomes the next vowel in the alphabet.

# vowels = "aeiou"
# iterate through string by character
# check if character is a vowel
# if so, then shift to next vowel and add to new string
def vowel_cipher(string)
  vowels = "aeiou"
  new_string = ""

  # string.each_char do |ch|
  #   if vowels.include?(ch)
  #     old_idx = vowels.index(ch)
  #     new_idx = (old_idx + 1) % 5
  #     new_vowel = vowels[new_idx]
  #     new_string << new_vowel
  #   else
  #     new_string << ch
  #   end
  # end

  new_chars = string.split("").map do |char|
    if vowels.include?(char)
      old_idx = vowels.index(char)
      new_idx = old_idx + 1
      vowels[new_idx % vowels.length]
    else
      char
    end
  end
  new_string = new_chars.join("")

  return new_string
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
