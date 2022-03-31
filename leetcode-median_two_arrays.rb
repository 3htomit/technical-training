def find_median_sorted_arrays(nums1, nums2)
  nums = (nums1 << nums2).flatten.sort
  p nums.count.even? ? (nums[nums.size/2].to_f + nums[(nums.size/2)-1].to_f) / 2 : nums[(nums.size/2).floor].to_f
end


## TEST

nums1_a = [1,3]
nums2_a = [2]
puts "Arrays A:"
find_median_sorted_arrays(nums1_a, nums2_a)
# Output: 2.00000

nums1_b = [1,2]
nums2_b = [3,4]
puts "Arrays B:"
find_median_sorted_arrays(nums1_b, nums2_b)
# Output: 2.50000
