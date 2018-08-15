# Write a method caesar_cipher that takes in a string and a number.
# The method should return a new string where every character of the original is shifted num characters in the alphabet.

# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

# convert alphabet string to array
# iterate array to create alphabet_hash using character as key and index as value
# iterate the string by characters
# find the hash value of character , then add offset num to value
# new_offset % 26 to get shifted number
# now we find the hash key that has this value of shifted number
def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  alphabet_hash = {}
  new_cipher = ""

  # alphabet.each_char.with_index do |char, idx|
  #   alphabet_hash[char] = idx
  # end
  #
  # str.each_char.with_index do |ch, i|
  #   shifted_val = (alphabet_hash[ch] + num) % 26
  #   new_cipher << alphabet_hash.key(shifted_val)
  # end

  # alternate solution
  str.each_char do |char|
    old_idx = alphabet.index(char)
    new_idx = old_idx + num
    new_char = alphabet[new_idx % 26]
    new_cipher += new_char
  end

  return new_cipher
end


puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
