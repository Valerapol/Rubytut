def check_number(guess, number, guess_number)
  if guess == number
    abort "Молодец!!! Ты угадал!!! Число действительно #{number.to_s}"
  elsif guess_number == 3
    abort "Ты проиграл, я загадал число #{number.to_s}"
  elsif guess > number
    if (guess - number).abs > 2
      puts "Холодно. Нужно меньше."
    else
      puts "Тепло. Нужно меньше."
    end
  else
    if (guess - number).abs > 2
      puts "Холодно. Нужно больше."
    else
      puts "Тепло. Нужно больше."
    end
  end
end
puts "Я загадал число от 0 до 15, отгадайте какое?"
num = rand(16)
puts "Первая попытка:"
ver = gets.chomp.to_i
check_number(ver, num, 1)
puts "Вторая попытка:"
ver = gets.chomp.to_i
check_number(ver, num, 2)
puts "Третья (последняя) попытка:"
ver = gets.chomp.to_i
check_number(ver, num, 3)
