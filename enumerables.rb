# Enumerables

# The all? method passes each element in its receiver to a given block.
# The method returns true if the block never returns a falsey value;
# otherwise it returns false.
def all_even?(arr)

  # receiver = arr
  # element = |int|
  # given block = int.even?
  arr.all? {|int| int.even?}
end

# The none? method passes each element in its receiver to a given block.
# The method returns true if the block never returns a truthy value;
# otherwise it returns false.
def none_even?(arr)
  # arr.all? {|int| int.odd?} is equivalent
  arr.none? {|int| int.even?}
end

# The any? method passes each element in its receiver to a given block.
# The method returns true if the block ever returns a truthy value;
# otherwise it returns false.
def any_even?(arr)
  arr.any? {|int| int.even?}
end

# The map method returns a new array that's the result of executing its given block once for each element in its receiver:
simpleton = [1, 2, 3]
puts ("map return new array = " + simpleton.map {|int| int*2}.to_s) #=> [2,4,6]
puts ("but does NOT modify its receiver simpleton = " + simpleton.to_s) #=> [1, 2, 3]

# The map! method does the same thing as map but modifies its receiver
puts ("\nmap! method modifies its receiver")
puts ("about_to_be_slightly_less_simpleton = [1, 2, 3]")
about_to_be_slightly_less_simpleton = [1, 2, 3]
about_to_be_slightly_less_simpleton.map! {|int| int**2} #=> [1, 4, 9]
puts ("about_to_be_slightly_less_simpleton = " + about_to_be_slightly_less_simpleton.to_s) #=> [1, 4, 9]

# count method has two variations for arrays.
# It can take no argument, where it's synonymous with length.
# It can take one argument, where it returns the number of elements equal to that argument.
# But count is more various still! When given a block, count returns the number of items that, when passed to that block, return a truthy value.
puts ("count w/ no argument returns array length = " + [1, 2, 3, 4, 5].count.to_s) #=> 5
puts ("count given an argument returns number of elements = " + [1, 2, 3, 4, 5].count(2).to_s) #=> 1
puts ("count given a block returns number of items passed to block returns truthy value = " + [1, 2, 3, 4, 5].count {|int| int.odd?}.to_s) #=> 3

# Like map, select returns a new collection, and like all?, none?, and any?
# It evaluates each element in its receiver for truthiness.
# select returns a collection containing all the elements in its receiver for which the given block returns a truthy value.
# reject does the opposite: it returns a collection containing all the elements in its receiver for which the given block returns a falsey value.
# Both select and reject have dangerous versions that modify their receivers (select! and reject!).

puts ("\nselect and reject")
array_of_terms = ["The blab of the pave", "tires of carts",
      "sluff of boot-soles", "talk of the promenaders",
      "The heavy omnibus", 'the driver with his interrogating thumb']

array_of_terms.select {|t| t.length > 20} #=> ["talk of the promenaders", "the driver with his interrogating thumb"]
array_of_terms.reject {|t| t.length > 20} #=> ["The blab of the pave", "tires of carts", "sluff of boot-soles",
                                            #    "The heavy omnibus"]

  # WELCOME TO THE DANGER ZONE
array_of_terms.select! {|t| t.length > 20} #=> ["talk of the promenaders", "the driver with his interrogating thumb"]
puts ("array_of_terms = " + array_of_terms.to_s) #=> ["talk of the promenaders", "the driver with his interrogating thumb"]

#
# The sort_by method sorts its receiver by the return values of its elements when they are passed to the given block,
# and it returns an array in that order. sort_by does not modify its receiver.
# Here's a method that uses sort_by to return an array of the words in its argument sorted by length.

def words_by_length(str)
  words = str.split
  words.sort_by {|word| word.length}
end

poor_gregor = "As Gregor Samsa awoke one morning from uneasy dreams he found
              himself transformed in his bed into a gigantic insect"

words_by_length(poor_gregor) #=> ["a", "As", "he", "in", "his", "one", "bed",
                             #    "into", "from", "found", "Samsa", "awoke",
                             #    "insect", "Gregor", "dreams", "uneasy",
                             #    "morning", "himself", "gigantic", "transformed"]
#
# each_with_index works as you'd expect: it calls the given block with two arguments--the item
# and the item's index--once for each item in the method's receiver.
# The syntax for passing two arguments for a block is unfamiliar but straightforward:

three_lines = ["The", "mind", "has", "shown", "itself", "at", "times",
    "Too", "much", "the", "baked", "and", "labeled", "dough",
    "Divided", "by", "accepted", "multitudes."]

  three_lines.each_with_index do |word, idx| #the parameters are comma separated and in order
    if word == word.capitalize
      puts "The word at index #{idx} must be the start of a new line!"
    end
  end

# If you'd prefer map to each (e.g., so you don't have to create a result array) or
# are iterating through a string, you can chain the with_index method to map or each_char.
back_to_the_numbers_game = [1, 2, 3]
back_to_the_numbers_game.map.with_index {|num, i| num - i} #=> [1, 1, 1]

"abcd".each_char.with_index {|ch, i| puts "#{ch} is letter number #{i + 1} in the alphabet!"} #=> "abcd" (returns receiver)



sentence = "hello world"

sentence.each_char.with_index {|char| p char}

def fizz_buzz(end_num)
  arr = []
  (1...end_num).each do |num|
    if num % 3 == 0 && num % 5 != 0
      arr << num
    elsif num % 5 == 0 && num % 3 != 0
      arr << num
    end
  end

  return arr
end

p fizz_buzz(10)

# 0..3
4.times { |n| p n}

# (1..3).each do |num|
#   puts num
#   (1...5).each do |num2|
#     puts "   " + num2.to_s
#     p 2
#   end
# end

arr2 = ["Ironman", "Captain America", "Black Panther", "Wonder Woman"]

arr2.each_with_index do |hero1, idx1|
  arr2.each_with_index do |hero2, idx2|
    if idx2 > idx1
      p hero1 + " " + hero2
    end
  end
end

p "dsfklj".methods.sort
