file1 = File.read("Q18.txt")
triangle_string = []
file2 = File.foreach("Q18.txt").with_index do |line, line_num|
triangle_string[line_num] = "#{line}".split(" ").map(&:to_i)
end
triangle = triangle_string

# triangle = triangle_string.map(&:to_i)

triangle.reverse!

print triangle[0]
snell_array = []
snell_array << triangle[0]
puts
print snell_array
puts
# on array i, for each jth component add the highest vaule of the jth and j+1th component of the i-1th
# row. Store this new array and repeat this for the i+1 row.
def biggest(x,y)
  if x <= y
    return y
  else
    return x
  end
end

for i in 1..14
  snell_array << triangle[i]
  for j in 0..(14-i)
    snell_array[i][j] += biggest(snell_array[i-1][j],snell_array[i-1][j+1])
  end
end
print snell_array
