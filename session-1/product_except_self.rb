def product_except_self(nums)
  answer = [1]
  (1..nums.length - 1).each do |i|
    answer[i] = answer[i-1] * nums[i-1]
  end

  r = 1
  ((nums.length - 1).downto(0)).each do |i|
    answer[i] *= r
    r *= nums[i]
  end

  answer
end
