@conversion = {
  I:   1,
  V:   5,
  X:   10,
  L:   50,
  C:   100,
  D:   500,
  M:   1000
}


def roman_to_int(s)
  puts s
  integers = []
  romans = s.split("")
  romans.each_with_index{ |r, i|
    case [r, romans[ (i+1) ]].join
    when "IV"
      integers << 4
      romans.delete_at(i+1)
    when "IX"
      integers << 9
      romans.delete_at(i+1)
    when "XL"
      integers << 40
      romans.delete_at(i+1)
    when "XC"
      integers << 90
      romans.delete_at(i+1)
    when "CD"
      integers << 400
      romans.delete_at(i+1)
    when "CM"
      integers << 900
      romans.delete_at(i+1)
    else
      integers << @conversion.values_at(r.to_sym).first
    end
  }
  puts "Result = #{integers.sum}"
end


## TEST

s_a = "III"
puts "Roman A:"
roman_to_int(s_a)
# Output: 3

s_b = "LVIII"
puts "Roman B:"
roman_to_int(s_b)
# Output: 58

s_c = "MCMXCIV"
puts "Roman C:"
roman_to_int(s_c)
# Output: 1994

s_d = "MCDLXXVI"
puts "Roman D:"
roman_to_int(s_d)
# Output: 1476
