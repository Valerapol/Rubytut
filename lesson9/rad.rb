def square(radius)
  return (3.14 * (radius ** 2)).round(2)
end
rad1 = nil
while rad1 == nil
  puts "Введите радиус первого круга:"
  rad1 = STDIN.gets.chomp
end
puts "Площадь круга: #{square(rad1.to_f)}"
rad2 = nil
while rad2 == nil
  puts "Введите радиус второго круга:"
  rad2 = STDIN.gets.chomp
end
puts "Площадь круга: #{square(rad2.to_f)}"
