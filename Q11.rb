require 'matrix'

file1 = File.read("q11.txt")

file = open("q11.txt") do |file|
  size = 20
  rows = file.lines.first(size).map { |line| line.split.map(&:to_i) }
  Matrix.rows(rows)
end

def ck(x)
  if x == nil
    return 1
  else
    return x
  end
end

print ck(file[0,110])
puts

arr = []
for j in 0..20
  for i in 0..20
arr << ck(file[i,j]) * ck(file[i+1,j]) * ck(file[i+2,j]) * ck(file[i+3,j])
arr << ck(file[j,i]) * ck(file[j,i+1]) * ck(file[j,i+2]) * ck(file[j,i+3])
arr << ck(file[i,j]) * ck(file[i+1,j+1]) * ck(file[i+2,j+2]) * ck(file[i+3,j+3])
arr << ck(file[i,j]) * ck(file[i+1,j-1]) * ck(file[i+2,j-2]) * ck(file[i+3,j-3])
  end
end

print arr.length
puts

print arr.sort.last




# file.each_index do |value|
#   arr[value] = file[value].split(" ")
# end
#
# print arr


# arrayofs = string.split(",")
#
# arrayofs2 = arrayofs.split(" ")
#
# print arrayofs2
