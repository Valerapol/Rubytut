reason = ""
while reason != "y" do
puts "Я загадал число от 0 до 16, отгадайте какое?"
num = rand(17)
puts "Первая попытка:"
ver = gets.chomp.to_i
if ver == num
  puts "Молодец!!! Ты угадал с первой попытки!!! Число действительно " + num.to_s
elsif ver > num
  if (ver - num).abs > 2
    puts "Холодно. Нужно меньше."
  else
    puts "Тепло. Нужно меньше."
  end
else
  if (ver - num).abs > 2
    puts "Холодно. Нужно больше."
  else
    puts "Тепло. Нужно больше."
  end
end
puts "Вторая попытка:"
ver = gets.chomp.to_i
if ver == num
  puts "Хорошо. Ты угадал со второй попытки. Число действительно " + num.to_s
elsif ver > num
  if (ver - num).abs > 2
    puts "Холодно. Нужно меньше."
  else
    puts "Тепло. Нужно меньше."
  end
else
  if (ver - num).abs > 2
    puts "Холодно. Нужно больше."
  else
    puts "Тепло. Нужно больше."
  end
end
puts "Третья (последняя) попытка:"
ver = gets.chomp.to_i
if ver == num
  puts "Ты угадал с третьей попытки. Число действительно " + num.to_s
else
  puts "Ты не угадал. (( Число было " + num.to_s
end
puts "Хотите закончить? (y/n)"
reason = gets.chomp
end
