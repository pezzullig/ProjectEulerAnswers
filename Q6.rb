sum = 0
for i in 1..100
  sum += i**2
end
puts sum

sqsum = 0
for i in 1..100 
  sqsum += i
end
sqsum = sqsum ** 2

puts sqsum-sum
