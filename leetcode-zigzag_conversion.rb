## Right answer, I didn't find...

def convert(string, n_rows)
  c = string.chars
  len = c.length
  string_buffer = []
  n_rows.times do
    string_buffer.push("")
  end

  i = 0
  while i < len

    idx = 0
    while idx < n_rows  && i < len
      # puts idx
      string_buffer[idx] += c[i]
      i += 1
      idx += 1
    end

    idx -= 2
    while idx > 0 && i < len
      # puts idx
      string_buffer[idx] += c[i]
      idx -= 1
      i += 1
    end

  end

  p string_buffer.join("")
end



## TEST

s = "PAYPALISHIRINGALOTOFPEOPLEINTHEWORLD"
numRows = 12
puts "String:"
convert(s, numRows)
# Output: "POAEPYPLPFEAOILTNIOTSLHHAEIGWDRNOLIR"
# Explanation
# P   O
# A E P
# Y P L
# P F E
# A O I
# L T N
# I O T
# S L H
# H A E
# I G W D
# R N O L
# I   R

s_a = "PAYPALISHIRING"
numRows_a = 3
puts "String A:"
convert(s_a, numRows_a)
# Output: "PAHNAPLSIIGYIR"
# Explanation:
# P   A   H   N
# A P L S I I G
# Y   I   R

s_b = "PAYPALISHIRING"
numRows_b = 4
puts "String B:"
convert(s_b, numRows_b)
# Output: "PINALSIGYAHRPI"
# Explanation:
# P     I    N
# A   L S  I G
# Y A   H R
# P     I

s_e = "PAYPALISHIRING"
numRows_e = 5
puts "String E:"
convert(s_e, numRows_e)
# Output: "PHASIYIRPLIGAN"
# Explanation:
# P       H
# A     S I
# Y   I   R
# P L     I G
# A       N

s_c = "A"
numRows_c = 1
puts "String C:"
convert(s_c, numRows_c)
# Output: "A"

s_d = (0...1000).map { ('A'..'Z').to_a[rand(26)] }.join
numRows_d = 50
puts "String C:"
convert(s_d, numRows_d)
