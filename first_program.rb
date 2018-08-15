puts("Hello world!")

#Output:
#   Hello world!
puts("")
puts("ARITHMETIC")
puts(42)
puts(3+4)
puts(7-5)
puts(4*5)
puts(10/2)
puts(9.fdiv(2))
cool_things = "cars, houses, stocks"
puts(cool_things)
puts("Type in your name")
name = gets().chomp
puts("Hello " + name + "!")
seven = "4".to_i + "3".to_i
puts(seven)
not_seven = "4" + "3"
puts(not_seven)
one = 1.to_s
three = 3.to_s
puts(one + three + " is an unlucky number")
puts("Equivalent to 5 + 5")
ten = 5.+(5)
puts("Equivalent to 9 - 2")
seven = 9.-(2)
puts("")
#-----------------
puts("COMPARISONS")
puts("3 < 4 is " + (3 < 4).to_s)
puts("5 > 10 is " + (5 > 10).to_s)
puts("3 == 4 " + (3 == 4).to_s)
puts("4 != 5 " + (4 != 5).to_s)
puts("IF, ELSE, ELSIF")
puts("Type in a number")
num = gets().to_i

if num < 10
  puts("That's not a big number!")
elsif num < 100
  puts("That's a pretty big number!")
elsif num < 1000
  puts("Wow that's a large number!")
else
  puts("Holy cow, that number is huge!")
end

puts("Thanks for typing in a number.")
puts("")
#--------------------
puts("LOGICAL CONNECTIVES")
puts("Input a number")

number = gets().to_i
if (number > 10) && (number < 20)
  puts("Your number was greater than 10 AND less than 20.")
else
  puts("Your number was either less than 10 OR greater than 20.")
end

puts("DeMorgan's Law is (x && y) == !(!x || !y)")
puts("")
#---------------------
puts("LOOPING")
puts("Enter a number")
num = gets.to_i
while num < 100
  puts("That number is too small! Try again!")
  num = gets.to_i
end
puts("You typed " + num.to_s + " which is at least 100!")
puts("")
# Arrays
puts("ARRAYS")
cool_things = ["Race", "Lasers", "Aeroplanes"]
four_primes = [2, 3, 5, 7]
an_empty_array = []

puts(cool_things[0])
puts(cool_things[1])
puts(cool_things[2])

presidents = [
  "George Washington",
  "John Adams",
  "Thomas Jefferson",
  "James Madison",
  "James Monroe",
  "Barack Obama",
  "Bill Clinton"
]

puts("Presidents length = " + presidents.length.to_s)

idx = 0
while idx < presidents.length
  puts(presidents[idx])
  idx = idx + 1
end

puts("PRESIDENTS LOOP COMPLETED")
puts("")

# ADDING or REMOVING FROM Arrays
puts("ADDING or REMOVING FROM ARRAYS")
puts(nil)
puts("PUSH by adding to end of array")
puts("array.push(item)")
cool_things = []

while cool_things.length < 3
  puts("Tell me a cool thing!")
  one_cool_thing = gets.chomp
  cool_things.push(one_cool_thing)
end

puts("Here's some cool things in backward order:")
puts("idx = array.length - 1")
puts("while idx >= 0")
puts("puts(array[idx])")
puts("idx = idx - 1")
puts("end")

idx = cool_things.length - 1
while idx >= 0
  puts(cool_things[idx])
  idx = idx - 1
end

puts("")
puts("UNSHIFT by adding to beginning")
puts("array.unshift(item)")

cool_things = []

while cool_things.length < 3
  puts("Enter a cool thing")
  one_cool_thing = gets.chomp
  cool_things.unshift(one_cool_thing)
end

puts("Here's cool things in order")
puts("idx = 0")
puts("while idx < array.length")
puts("puts(array[idx])")
puts("idx = idx + 1")
puts("end")



idx = 0
while idx < cool_things.length
  puts(cool_things[idx])
  idx = idx + 1
end

puts("")
puts("SHIFT and POP example")

arr = [2,3,5,7]

puts(arr[0])
item = arr.shift
puts(item)

# prints true; the leading 2 element is removed
puts(arr == [3,5,7])

puts(arr[2])

item = arr.pop
puts(item)

puts(arr.length)
puts(arr == [3,5])

puts(arr[0])
puts(arr[1])

puts(arr[2])

str = "abcd"
idx = 0
while idx < str.length
  puts(str[idx])
  idx = idx + 1
end

puts(nil)
puts("SPLITTING A STRING; JOINING AN ARRAY")

"this is a sentence".split == ["this", "is", "a", "sentence"]

# the argument to join is a separator
["this", "is", "a", "sentence"].join(" ") == "this is a sentence"

# this puts a comma ", " between each of the words
["love", "sex", "women"].join(", ") == "love, sex, women"

puts(nil)
puts("WRITING YOUR OWN METHOD")
puts(nil)
# First define the method
def print_three_times(name)
  idx = 0
  while idx < 3
    puts(name)
    idx = idx + 1
  end
end

print_three_times("Amy")
print_three_times("Ivy")
print_three_times("David")

puts(nil)
# method with return value
def first_square_numbers(number_of_squares)
  squares = []

  idx = 0
  while idx < number_of_squares
    squares.push(idx * idx)
    idx = idx + 1
  end

  return squares
end

puts("How many square numbers do you want?")
number_of_desired_squares = gets.to_i
squares = first_square_numbers(number_of_desired_squares)

idx = 0
while idx < squares.length
  puts(squares[idx])
  idx = idx + 1
end

puts(nil)
puts("Breaking Out of Loops bys using word 'break' to break out of loop")
puts(nil)
puts("Return Early by using word 'return'. That would end function right there")
