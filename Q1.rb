def sum_of_factors_under(x)
  my_sum = 0
  for num in 0...x
      if num % 3 == 0 || num % 5 == 0
          my_sum += num
      end
  end
  puts my_sum
end

sum_of_factors_under(10)
sum_of_factors_under(1000)
