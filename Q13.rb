require 'matrix'
bigsum = open("q13.txt").each_line.map {|x| x.to_i}
 sum = 0
bigsum.each do |x|
  sum += x
end
print sum
5537376230390876637302048746832985971773659831892672
