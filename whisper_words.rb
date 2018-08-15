# Write a method whisper_words that takes in an array of words and
# returns a new array containing a whispered version of each word.
# See the examples. Solve this using map :).

# iterate each word in array
# lowercase the word and concatenate with "..."
# use map

def whisper_words(words)
  return words.map {|word| word.downcase + "..."}
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts
