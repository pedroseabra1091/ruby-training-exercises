# Problem statements

## Assembly lines

The problem involves analyzing the production of an assembly line in a car factory, where the assembly line speed ranges from 0 to 10. At the slowest active speed (1), 221 cars are produced per hour, and production increases linearly with speed. However, higher speeds correspond to a higher likelihood of producing faulty cars, leading to different success rates: 100% success rate for speeds 1 to 4, 90% for speeds 5 to 8, 80% for speed 9, and 77% for the maximum speed of 10.

Your solution must be capable of:
Calculate the production rate per hour
Calculate the number of working items produced per minute


## Two sum

Given an array of integers and an integer target, return indices of the two numbers such that they add up to the target. You may assume each input would have exactly one solution, and you may not use the same element twice. You can return the answer in any order.

### Examples

```ruby
two_sum([2,7,11,15], 9) # [0, 1]
```


## Product of array except self

Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

### Constraints

- Algorithm must run in O(N) time without using the division operator
- 2 <= nums.length <= 105
- -30 <= nums[i] <= 30
- The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer


### Examples

```ruby
product_except_self([1,2,3,4]) # [24, 12, 8, 6]

product_except_self([-1,1,0,-3,3]) # [0,0,9,0,0]
```
