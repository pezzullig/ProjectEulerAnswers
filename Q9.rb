for i in 1..1000 do
  for j in i..1000 do
    for k in j..1000
      if i<k && j<k && i+j+k==1000 && i**2 + j**2 == k**2
        puts i
        puts j
        puts k
      end
    end
  end
end
