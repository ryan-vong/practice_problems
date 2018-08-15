# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)
  hour = 0
  min = 0
  result = ""

  hour = minutes / 60
  min = minutes % 60
  puts(hour)
  puts(min)

  if min == 0
    min = "00"
  end

  result = hour.to_s + ":" + min.to_s

  return result
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #time_conversion")
puts("===============================================")
    puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
    puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
    puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
puts("===============================================")
