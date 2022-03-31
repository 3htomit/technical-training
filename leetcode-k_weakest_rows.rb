def k_weakest_rows(mat, k)
  hash = {}
  mat.map! { |a| a.sum }
  mat.each_with_index { |n, i| hash[:"#{i}"] = n }
  sorted_hash = hash.sort_by{ |k, v| v }.to_h
  result = sorted_hash.keys
  p result.map{ |r| r.to_s.to_i }.first(k)
end


## TEST

puts "Matrix A:"
mat_a =
[[1,1,0,0,0],
 [1,1,1,1,0],
 [1,0,0,0,0],
 [1,1,0,0,0],
 [1,1,1,1,1]]
k_a = 3
k_weakest_rows(mat_a, k_a)
# Output: [2,0,3]
# Explanation:
# The number of soldiers in each row is:
# - Row 0: 2
# - Row 1: 4
# - Row 2: 1
# - Row 3: 2
# - Row 4: 5
# The rows ordered from weakest to strongest are [2,0,3,1,4].

puts "Matrix B:"
mat_b =
[[1,0,0,0],
[1,1,1,1],
[1,0,0,0],
[1,0,0,0]]
k_b = 2
k_weakest_rows(mat_b, k_b)
# Output: [0,2]
# Explanation:
# The number of soldiers in each row is:
# - Row 0: 1
# - Row 1: 4
# - Row 2: 1
# - Row 3: 1
# The rows ordered from weakest to strongest are [0,2,3,1].
