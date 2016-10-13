require 'prime'
print 3.prime?

sum = 0
million2 = *(1..2_000_000)


my_prime = million2.select! {|num| num.prime? }

my_prime.each do |x|
  sum += x
end
puts
print sum
