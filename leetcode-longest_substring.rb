def length_of_longest_substring(s)
  letters = s.split("")
  longest = 0
  letters.each_with_index { |l, i|
    n = 1
    sub_s = l
    until letters[i + n].nil? || sub_s.include?(letters[i + n])
      sub_s += letters[i + n]
      n += 1
    end
    longest = n if n > longest
  }
  p longest
end


## TEST

s_a = "abcabcbb"
puts "String A:"
length_of_longest_substring(s_a)
# Output: 3
# Explanation: The answer is "abc", with the length of 3.

s_b = "bbbbb"
puts "String B:"
length_of_longest_substring(s_b)
# Output: 1

s_c = "pwwkew"
puts "String C:"
length_of_longest_substring(s_c)
# Output: 3
# Explanation: The answer is "wke", with the length of 3.
# Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

s_d = ""
puts "String D:"
length_of_longest_substring(s_d)
