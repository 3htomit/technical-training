def my_atoi(s)
  int = s.to_i
  if int < -2147483648
    p -2147483648
  elsif int > 2147483647
    p 2147483647
  else
    p int
  end
end


# TEST

s_a = "42"
puts "String A:"
my_atoi(s_a)
# Output: 42

s_b = "   -42"
puts "String B:"
my_atoi(s_b)
# Output: -42

s_c = "4193 with words"
puts "String C:"
my_atoi(s_c)
# Output: 4193

s_d = "only words"
puts "String D:"
my_atoi(s_d)
# Output: 0

s_e = "-91283472332"
puts "String E:"
my_atoi(s_e)
# Output: -2147483648
