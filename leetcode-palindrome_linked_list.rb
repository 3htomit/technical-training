def is_palindrome(head)
  if head.size.even?
    split_head = head.each_slice(head.size/2).to_a
    return split_head[1].reverse == split_head[0]
  else
    head.delete_at((head.size/2).floor)
    split_head = head.each_slice(head.size/2).to_a
    return split_head[1].reverse == split_head[0]
  end
end


## TEST
head_a = [1,2,2,1]
is_palindrome(head_a)
# Output: true
head_b = [1,2,3,2,1]
is_palindrome(head_b)
# Output: true
head_c = [1,2]
is_palindrome(head_c)
# Output: false
