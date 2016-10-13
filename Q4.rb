a = 6789

def palindromic
  my_numbers = []
  for i in 100...1000
    for j in 100...1000
      my_numbers << i*j
    end
  end

  my_pals = []
  my_numbers.each do |pal|
    if pal.to_s.split("") == pal.to_s.split("").reverse
      my_pals << pal
    end
  end
  print my_pals.sort.last

end

palindromic
