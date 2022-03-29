def two_sum(nums, target)
  ## My solution
  nums.each do |num|
    n = 1
    while n + 1 <= (nums.size - nums.index(num))
      p "[#{nums.index(num)}, #{(nums.index(num) + n)}]" if (num + nums[nums.index(num) + n]) == target
      n += 1
    end
  end

  ## Best solution:
  # for i in 0...(nums.size) do
  #   for n in (i + 1)...(nums.size) do
  #     p [i, n] if (nums[i] + nums[n]) == target
  #   end
  # end
end


# TESTING

p "Testing A:"
nums_a = [15, 7, 11, 2]
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
