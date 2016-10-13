sum=0
num = 2**1000
print num
nums = num.to_s.split("").each do |x|
  sum += x.to_i
end
print sum
