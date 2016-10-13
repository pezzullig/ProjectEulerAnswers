start_year = 1901
end_year = 2000
jan = 31
feb = 28
mar = 31
apr = 30
may = 31
jun = 30
jul = 31
aug = 31
sep = 30
oct = 31
nov = 30
dec = 31

puts
year = *(1..jan),*(1..feb),*(1..mar),*(1..apr),*(1..may),*(1..jun),*(1..jul),*(1..aug),*(1..sep),*(1..oct),*(1..nov),*(1..dec)
leap_year = *(1..jan),*(1..feb+1),*(1..mar),*(1..apr),*(1..may),*(1..jun),*(1..jul),*(1..aug),*(1..sep),*(1..oct),*(1..nov),*(1..dec)
block4 = (year += year += year += leap_year).flatten
puts block4.length

print block4
year_count = 1901
sundays = 5
num_of_suns = 0

while year_count < 2000 do
  if sundays >= block4.length
    sundays += - block4.length
    year_count += 4
  end
  if block4[sundays] == 1
    num_of_suns+=1
    sundays +=7
  else
    sundays+=7
  end
  puts year_count
end
puts "........"
puts num_of_suns
