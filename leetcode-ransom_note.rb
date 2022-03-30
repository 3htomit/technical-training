def can_construct(ransom_note, magazine)
  split_ransom = ransom_note.split("")
  split_magazine = magazine.split("")
  result = false
  split_ransom.each do |letter|
    if split_magazine.include?(letter)
      # puts "#{split_magazine} vs #{letter}"
      result = true
      split_magazine.delete_at(split_magazine.index(letter))
      # p result
      # p split_magazine
    else
      # puts "#{split_magazine} vs #{letter}"
      result = false
      # p result
      # p split_magazine
      break
    end
  end
  p result
end


## TEST

# p "Ransom A"
# ransomNote_a = "a"
# magazine_a = "b"
# can_construct(ransomNote_a, magazine_a)
# # Output: false

p "Ransom B"
ransomNote_b = "fihjjjjei"
magazine_b = "hjibagacbhadfaefdjaeaebgi"
can_construct(ransomNote_b, magazine_b)
# Output: false

# p "Ransom C"
# ransomNote_c = "aa"
# magazine_c = "aab"
# can_construct(ransomNote_c, magazine_c)
# # Output: true
