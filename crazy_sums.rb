def crazy_sum(numbers)

  sum = 0

  i = 0
  while i < numbers.length
    sum += (i * numbers[i])
    i += 1
  end

  return sum
end

# crazy_sum([2]) == 0 # (2*0)
# crazy_sum([2, 3]) == 3 # (2*0) + (3*1)
# crazy_sum([2, 3, 5]) == 13 # (2*0) + (3*1) + (5*2)
# crazy_sum([2, 3, 5, 2]) == 19 # (2*0) + (3*1) + (5*2) + (2*3)
puts("\nTests")
puts("===============================================")
    puts('crazy_sum([2]) == 0: ' + (crazy_sum([2]) == 0).to_s)
    puts('crazy_sum([2, 3]) == 3: ' + (crazy_sum([2, 3]) == 3).to_s)
    puts('crazy_sum([2, 3, 5]) == 13: ' + (crazy_sum([2, 3, 5]) == 13).to_s)
    puts('crazy_sum([2, 3, 5, 2]) == 19: ' + (crazy_sum([2, 3, 5, 2]) == 19).to_s)
