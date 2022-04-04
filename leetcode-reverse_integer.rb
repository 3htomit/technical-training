def reverse(x)
  if x < 0
    x_reverse = -((-x).digits.join.to_i)
  else
    x_reverse = x.digits.join.to_i
  end

  if x_reverse < -2**31 || x_reverse > 2**31 - 1
    p 0
  else
    p x_reverse
  end
end


# TEST

x_a = 123
puts "Integer A:"
reverse(x_a)
# Output: 321

x_b = -123
puts "Integer B:"
reverse(x_b)
# Output: -321

x_c = 120
puts "Integer C:"
reverse(x_c)
# Output: 21

x_d = 1534236469
puts "Integer D:"
reverse(x_d)
# Output: 0
