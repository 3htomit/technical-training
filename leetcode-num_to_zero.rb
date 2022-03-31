def number_of_steps(num)
  n = 0
  while num > 0
    if num.even?
      num /= 2
      n += 1
    else
      num -= 1
      n += 1
    end
  end
  puts n
end


## TEST

puts "Num A:"
num_a = 14
number_of_steps(num_a)
# Output: 6

puts "Num B:"
num_b = 8
number_of_steps(num_b)
# Output: 4

puts "Num C:"
num_c = 123
number_of_steps(num_c)
# Output: 12
