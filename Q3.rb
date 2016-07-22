require 'prime'


600851475143

def prime_factors(x)
  my_primes = []
  primes = Prime.take_while {|p| p < x ** 0.5}
  primes.each do |y|
    if x % y == 0
     my_primes << y
    end
  end
  return my_primes
end

print prime_factors(600851475143)
