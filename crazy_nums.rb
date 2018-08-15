# Complete the crazy_nums function below.
def crazy_nums(max_num)

  array_integers = []

  i = 0
  while i < max_num
    less_than_max = false
    div_by_three = false
    div_by_five = false

    if (i < max_num)
      less_than_max = true
    end

    if (i % 3 == 0)
      div_by_three = true
    end

    if (i % 5 == 0)
      div_by_five = true
    end

    if (less_than_max) && (div_by_three || div_by_five) && (!(div_by_three && div_by_five))
      array_integers = array_integers.push(i)
    end

    i += 1
  end

  return array_integers
end

puts("\nTests")
puts("===============================================")
    puts('crazy_nums(3) == []: ' + (crazy_nums(3) == []).to_s)
    puts('crazy_nums(10) == [3, 5, 6, 9]: ' + (crazy_nums(10) == [3, 5, 6, 9]).to_s)
    puts('crazy_nums(20) == [3, 5, 6, 9, 10, 12, 18]: ' + (crazy_nums(20) == [3, 5, 6, 9, 10, 12, 18]).to_s)

# crazy_nums(3) == []
# crazy_nums(10) == [3, 5, 6, 9]
# crazy_nums(20) == [3, 5, 6, 9, 10, 12, 18]
