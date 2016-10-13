# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.



 def divisors_of(num)
   (1..num/2).select { |n| num.to_i % n.to_i == 0}
 end
 print divisors_of(10)
 puts


def divsum(x)
  sum=0
  arr=divisors_of(x)
  arr.each do |y|
    sum += y
  end
  puts sum
end
divsum(220)

amicable_sum = 0

for i in 1...1000
  y = divsum(i)
  puts y
  if divsum(y) == i
    amicable_sum += i
  else
  end
end
puts amicable_sum
