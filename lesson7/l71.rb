arr = [1, 2, 3, 4, 5, 6, 7]
puts "Исходный массив:"
puts arr.to_s
arr2 = []
for item in arr do
  arr2.unshift(item)
end
puts "Новый массив, полученный из исходного:"
puts arr2.to_s
