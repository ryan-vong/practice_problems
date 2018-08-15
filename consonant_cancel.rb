# Write a method consonant_cancel that takes in a sentence and
# returns a new sentence where every word begins with it's first vowel.

# create a helper method that takes in a word and return a word with it's first vowel
# split sentence into words
# iterate through each word and pass it to helper method
# create new sentence with the word from helper method

def first_vowel_word(word)
  vowels = "aeiou"
  word.each_char.with_index do |ch, idx|
    if vowels.include?(ch)
      return word[idx..-1]
    end
  end

  return word
end

# puts first_vowel_word("rabbit")

def consonant_cancel(sentence)
  words = sentence.split(" ")
  new_sentence = []

  words.each do |word|
    new_sentence << first_vowel_word(word)
  end

  return new_sentence.join(" ")
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"
