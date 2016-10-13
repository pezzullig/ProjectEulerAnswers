require 'prime'

def divisible?(value)
  for i in 1..20
    if value % i != 0
      return false
    end
  end
  return true
end

mypf =[]
  for i in 2..20
     Prime.prime_division(i).each do |x|
       mypf << x
     end
  end
  mypf = mypf.sort

  print mypf
prod=1
for i in 1..mypf.length-1
  if mypf[i][0] != mypf[i-1][0]
    prod *= mypf[i-1][0]**mypf[i-1][1]
  end
  if i == mypf.length - 1 && mypf[i][0] != mypf[i-1][0]
    prod *= mypf[i][0]**mypf[i][1]
  end
end
print prod

print divisible?(prod)
