  my_words = {
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen",
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
  def count(x)
    y = x.split("").length
    return y
end
sum = 0
for i in 1..9
  sum += count(my_words[i])
end
first_10 = sum
first_20 = first_10
for i in 10..19
first_20 += count(my_words[i])
end
puts first_10
puts first_20
#
#
seq_to_100 = [20,30,40,50,60,70,80,90]

first_100 = first_20
seq_to_100.each do |x|
  first_100 += (count(my_words[x])*10) + first_10
end
puts first_100
$hundred = 7
first_1000 = first_10 + (9 * $hundred) + 8 + 3 + first_100
for i in 1..9
 first_1000 += (count(my_words[i]) + $hundred + 3)*99 + first_100
 end
 puts first_1000
