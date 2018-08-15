# Write a method anagrams? that takes in two words and returns a boolean
# indicating whether or not the words are anagrams.
# Anagrams are words that contain the same characters but not necessarily in the same order.
# Solve this without using .sort

# assuming both words are same length to be an anagrams
# create a hash["c"=>true, "a"=>true, "t"=>true ]
# check if second word contains the same key as first word
def anagrams?(word1, word2)
  word1_hash = {}

  if word1.length != word2.length
    return false
  end

  word1.each_char do |ch|
    word1_hash[ch] = true
  end

  word2.each_char do |char|
    if !(word1_hash.include?(char))
      return false
    end

  end

  return true
end

# my_hash = {"c" => "z", "a" => 1, "t" => false}
# p my_hash.include?("t")


puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false
