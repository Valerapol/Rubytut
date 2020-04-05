count = 0
mass = []
puts "Ведите N"
num = gets.to_i
while count < num do
  count += 1
  mass << count
end
puts mass.to_s
puts "Сумма чисел: " + mass.sum.to_s
