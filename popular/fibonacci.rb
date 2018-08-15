def fibonacci(num)

  fib = [1,1]

  while fib.length < num
    # puts "before " + fib.length.to_s
    fib << fib[-1] + fib[-2]
    # puts "after " + fib.length.to_s
  end

  fib
end


p fibonacci(5)
p fibonacci(8)
