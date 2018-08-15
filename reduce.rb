# reduce

# reduce is by far the most difficult enumerable to learn.
# Luckily your teacher is a professional! reduce can be invoked in three ways:
# With one argument, a symbol that names a binary method or operator
# (e.g., :+, which takes two operands, or :lcm, which has a receiver and an argument).
# With a block and without an argument. The block has two parameters: an accumulator and the current element.
# With a block and with one argument that's the initial accumulator.
# The block has two parameters: an accumulator and the current element.
# In every variation, reduce combines all elements of its receiver by applying a binary operation.
# Let's examine each case.

puts ("[1, 2].reduce(:+) = " + [1, 2].reduce(:+).to_s) #=> 3
puts ("[1, 2].reduce(:*) = " + [1, 2].reduce(:*).to_s) #=> 2

puts ("[1, 2, 3].reduce(:+) = " + [1, 2, 3].reduce(:+).to_s) #=> 6
puts ("[1, 2, 3].reduce(:*) = " + [1, 2, 3].reduce(:*).to_s) #=> 6

puts ("[1.0, 2.0, 3.0].reduce(:/) = " + [1.0, 2.0, 3.0].reduce(:/).to_s) #=> 0.16666666666666666
puts ("[3.0, 2.0, 1.0].reduce(:/) = " + [3.0, 2.0, 1.0].reduce(:/).to_s) #=> 1.5


# This method is analogous to reduce(:+):
def my_sum(arr)
  accumulator = arr.first # store first element as accumulator

  arr.each_index do |idx|
    next if idx == 0 # skip first element: it's already the accumulator
    accumulator += arr[idx] # increment accumulator by current element
  end

  accumulator
end

# With a Block, Without an Argument
# These two invocations of reduce are functionally equivalent:
puts ("[1, 2, 3].reduce(:+) = " + [1, 2, 3].reduce(:+).to_s)
puts ("[1, 2, 3].reduce {|acc, el| acc + el} = " + [1, 2, 3].reduce {|acc, el| acc + el}.to_s)

# Invoking reduce with a block gives greater control over how to reduce the receiver.
# One isn't limited to binary methods or operations:
def sum_first_and_odds(arr)
  arr.reduce do |acc, el|
    if el.odd?
      acc + el
    else
      # this else statement is necessary because otherwise the return value of
      # the block would be nil if the element is even. Thus the interpreter
      # would reassign acc to nil.
      acc
    end
  end
end

puts ("sum_first_and_odds([1, 2, 4, 5]) = " + sum_first_and_odds([1, 2, 4, 5]).to_s) #=> 6


# In Step 1's sixth practice assessment, we wrote a method that determined the longest word in a string.
# Here's the original solution and one using reduce:

# OLD SOLUTION
def old_longest_word(str)
  words = str.split
  longest_word = ""

  words.each do |word|
    if word.length > longest_word.length
      longest_word = word
    end
  end

  longest_word
end

# REDUCED EXCELLENCE
def longest_word(str)
  str.split.reduce do |longest, word|
    if word.length > longest.length
      word
    else
      longest
    end
  end
end

# With a Block, With an Initial Accumulator

# There are two differences between invoking reduce with an argument and a block versus with only a block:
# The interpreter initially assigns the accumulator to the given argument.
# The interpreter iterates through the entire receiver, i.e., it does not skip the first element.

# This method returns the number of words in the string that end in the letter "e"
# (e.g., e_words("Let be be finale of seem") => 3). Here's the solution we provided:
def old_e_words(str)
  words = str.split
  count = 0

  words.each do |word|
    count += 1 if word[-1] == "e"
  end

  count
end

# Take a moment to study an implementation using reduce:
def e_words(str)
  str.split.reduce(0) do |count, word|
    if word[-1] == "e"
      count + 1
    else
      count # return existing count from block so count isn't reassigned to nil
    end
  end
end

#
# Here's our solution as well as an implementation using reduce with an empty string as the initial accumulator:
# OLD SOLUTION
def old_boolean_to_binary(arr)
  binary = ""

  arr.each do |boolean|
    if boolean
      binary += "1"
    else
      binary += "0"
    end
  end

  binary
end

# REDUCED EXCELLENCE
def boolean_to_binary(arr)
  arr.reduce("") do |str, boolean|
    if boolean
      str + "1"
    else
      str + "0"
    end
  end
end

#
# Try to code an implementation using reduce before looking at the solution:
# OLD SOLUTION
def old_factors(num)
  factors = []
  (1..num).each do |i|
    if num % i == 0
      factors << i
    end
  end
  factors
end

def new_factors(num)

  (1..num).reduce([]) do |factors, i|
    if num % i == 0
      factors << i
    else
      factors
    end
  end

end


# REDUCED EXCELLENCE
def factors(num)
  (1..num).reduce([]) do |factors, i|
    if num % i == 0
      factors << i
    else
      factors
    end
  end
end

# reduce is complicated, but it's one of the most powerful built-in methods in Ruby.
# Whenever you find yourself setting a variable you reference throughout an iteration,
# consider using reduce to simplify your code.

# Note: The reduce method is synonymous with inject.
# reduce seems more descriptive, but you'll often see inject out in the Ruby wilds.
