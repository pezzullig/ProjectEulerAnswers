
def collatz_func(x)
  if x.even?
    return x/2
  else
    return  3 * x + 1
  end
end

def collatz_seq(x)

  counter = 1
  while x != 1 do
    x = collatz_func(x)
    counter += 1
  end
  return counter
end

collatz_hash = Hash.new


for i in 1..1_000_000
  collatz_hash[i] = collatz_seq(i)
end

print collatz_hash.sort_by { |n,count| count }
[837799, 525]
