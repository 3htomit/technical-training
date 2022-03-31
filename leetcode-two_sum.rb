def two_sum(nums, target)
  nums.each_with_index do |num, i|
    n = 1
    while  n + 1 <= (nums.size - i)
      if (num + nums[i + n]) == target
        p [nums.index(num), (nums.index(num) + n)]
      end
      n += 1
    end
  end
end


# TESTING

p "Testing A:"
nums_a = [2, 7, 11, 15]
target_a = 9
# Output: [0, 1]
two_sum(nums_a, target_a)

p "Testing B:"
nums_b = [3, 2, 4]
target_b = 6
# Output: [1, 2]
two_sum(nums_b, target_b)

p "Testing C:"
nums_c = [3, 3]
target_c = 6
# Output: [0, 1]
two_sum(nums_c, target_c)
