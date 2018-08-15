# Write a method to determine if the array contains all even integers

def all_even?(arr)

  arr.all? {|int| int.even?}
end

puts("all_even?([2, 4, 6]) = true" + all_even?([2, 4, 6]) == true.to_s)
