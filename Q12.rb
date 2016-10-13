require 'prime'
# class Triangle
#   @total_sum = [1,3]
#   def triangle_seq(n)
#     sum = 0
#     array = *(1..n)
#     array.each do |x|
#       sum += x
#     end
#     return sum.to_i
#   end
class Triangle
  $total_sum = [1,3]
  def next
    $total_sum << $total_sum.last + $total_sum.length + 1
    print $total_sum[$total_sum.last]
  end
end

mytri = Triangle.new

80.prime_division.each do |x,y|
  print y+1
  puts
end



def divisors(y)
  sum = 1
  y.prime_division.each do |x,y|
    sum *= (y+1)
    end
    return sum.to_i
end


while divisors($total_sum.last) < 500 do
  mytri.next
  print "#{$total_sum.last } "
end


puts
print $total_sum.last
puts
puts divisors($total_sum.last)
