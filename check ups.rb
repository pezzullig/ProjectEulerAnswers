require 'prime'
##.each(100) do |prime|
  #p prime  #=> 2, 3, 5, 7, 11, ...., 97
# end
# Prime.each(5) do |x|
#
# end
#
# prime = Prime.(100) do
#
# print prime
#



primes = Prime.take_while {|p| p < 100}

puts primes
