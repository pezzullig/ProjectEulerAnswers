
  @result = 1
  def factorial(x)
    if x==1
      return @result
    else @result *= x
    factorial(x-1)
  end
  end

num = factorial(100)
puts num
number = num.to_s.split("")
count =0
number.each do |x|
  count += x.to_i
end
puts
puts count
