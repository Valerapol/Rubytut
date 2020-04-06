reason = "y"
res1 = "Холодно. Нужно меньше."
res2 = "Тепло. Нужно меньше."
res3 = "Холодно. Нужно больше."
res4 = "Тепло. Нужно больше."
while reason == "y" do
puts "Я загадал число от 0 до 10, отгадайте какое?"
num = rand(11)
puts "Первая попытка:"
ver = gets.chomp.to_i
if ver == num
  abort "Молодец!!! Ты угадал с первой попытки!!! Число действительно " + num.to_s
elsif ver > num
  if (ver - num).abs > 2
    puts res1
  else
    puts res2
  end
else
  if (ver - num).abs > 2
    puts res3
  else
    puts res4
  end
end
puts "Вторая попытка:"
ver = gets.chomp.to_i
if ver == num
  abort "Хорошо. Ты угадал со второй попытки. Число действительно " + num.to_s
elsif ver > num
  if (ver - num).abs > 2
    puts res1
  else
    puts res2
  end
else
  if (ver - num).abs > 2
    puts res3
  else
    puts res4
  end
end
puts "Третья (последняя) попытка:"
ver = gets.chomp.to_i
if ver == num
  abort "Ты угадал с третьей попытки. Число действительно " + num.to_s
else
  puts "Ты не угадал. (( Число было " + num.to_s
end
puts "Хотите попробовать еще раз? (y/n)"
reason = gets.chomp
end
