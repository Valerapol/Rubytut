count = 0
mass = []
puts "Какой длины будет массив случайных чисел?"
num = gets.to_i
while count < num do
  count += 1
  mass << rand(101)
end
puts mass.to_s
puts "Саме большое число в массиве:"
puts mass.max
