def product_except_self(nums)
  length = nums.length
  raise ArgumentError, "Invalid length of nums array" unless (2..10**5).cover?(length)

  answer = [1]
  (1..length - 1).each do |i|
    answer[i] = answer[i-1] * nums[i-1]
  end

  r = 1
  ((length - 1).downto(0)).each do |i|
    raise ArgumentError, "Invalid value in nums array" unless (-30..30).cover?(nums[i])
    answer[i] *= r
    r *= nums[i]
  end

  answer
end
