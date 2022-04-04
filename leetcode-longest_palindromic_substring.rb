def longest_palindrome(s)
  palindrome = ''
  letters = s.chars

  letters.each_with_index { |l, i|
    n = 0
    l_size = letters.size

    while l_size > 1
      l_range = letters[i...(letters.size - n)]
      palindrome = l_range.join if l_range == l_range.reverse && l_range.size > palindrome.length

      n += 1
      l_size = letters[i...(letters.size - n)].size
      break if l_size <= palindrome.length
    end
  }

  p palindrome.empty? ? palindrome = s[0] : palindrome
end


## TEST

s_a = 'babad'
puts "\n String A:"
longest_palindrome(s_a)
# Output: "bab"

s_b = 'cbbd'
puts "\n String B:"
longest_palindrome(s_b)
# Output: "bb"

s_c = 'cbbdtepipetsqsrv'
puts "\n String C:"
longest_palindrome(s_c)
# Output: "tepipet"

s_d = 'a'
puts "\n String D:"
longest_palindrome(s_d)
# Output: "a"

s_e = 'ac'
puts "\n String E:"
longest_palindrome(s_e)
# Output: "a"

s_f = 'bb'
puts "\n String F:"
longest_palindrome(s_f)
# Output: "bb"

s_g = 'zudfweormatjycujjirzjpyrmaxurectxrtqedmmgergwdvjmjtstdhcihacqnothgttgqfywcpgnuvwglvfiuxteopoyizgehkwuvvkqxbnufkcbodlhdmbqyghkojrgokpwdhtdrwmvdegwycecrgjvuexlguayzcammupgeskrvpthrmwqaqsdcgycdupykppiyhwzwcplivjnnvwhqkkxildtyjltklcokcrgqnnwzzeuqioyahqpuskkpbxhvzvqyhlegmoviogzwuiqahiouhnecjwysmtarjjdjqdrkljawzasriouuiqkcwwqsxifbndjmyprdozhwaoibpqrthpcjphgsfbeqrqqoqiqqdicvybzxhklehzzapbvcyleljawowluqgxxwlrymzojshlwkmzwpixgfjljkmwdtjeabgyrpbqyyykmoaqdambpkyyvukalbrzoyoufjqeftniddsfqnilxlplselqatdgjziphvrbokofvuerpsvqmzakbyzxtxvyanvjpfyvyiivqusfrsufjanmfibgrkwtiuoykiavpbqeyfsuteuxxjiyxvlvgmehycdvxdorpepmsinvmyzeqeiikajopqedyopirmhymozernxzaueljjrhcsofwyddkpnvcvzixdjknikyhzmstvbducjcoyoeoaqruuewclzqqqxzpgykrkygxnmlsrjudoaejxkipkgmcoqtxhelvsizgdwdyjwuumazxfstoaxeqqxoqezakdqjwpkrbldpcbbxexquqrznavcrprnydufsidakvrpuzgfisdxreldbqfizngtrilnbqboxwmwienlkmmiuifrvytukcqcpeqdwwucymgvyrektsnfijdcdoawbcwkkjkqwzffnuqituihjaklvthulmcjrhqcyzvekzqlxgddjoir'
puts "\n String G:"
longest_palindrome(s_g)
