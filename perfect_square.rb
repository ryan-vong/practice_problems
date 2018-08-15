# Complete the square_nums function below.
def square_nums(max_num)

  perfect_square = 0
  square_total = 0

  i = 1
  while i < max_num

    square_total = i * i

    if (square_total > 0) && (square_total < max_num)
      perfect_square += 1
    end

    i += 1
  end

  return perfect_square
end


puts("\nTests")
puts("===============================================")
    puts('square_nums(5) == 1: ' + (square_nums(5) == 2).to_s)
    puts('square_nums(10) == 1: ' + (square_nums(10) == 3).to_s)
    puts('square_nums(25) == 1: ' + (square_nums(25) == 4).to_s)
#square_nums(5) == 2
#square_nums(10) == 3
#square_nums(25) == 4
