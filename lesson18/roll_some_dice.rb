def cls
  system "clear" or system "cls"
end
def show_rolling_die
  50.times do
    # Вместо puts используем print, т.к. он не добавляет перенос строки в конце
    print "#{rand(6) + 1}\r"
    sleep 0.03
  end
end

puts 'How many dice?'
number = gets.to_i
puts
cls
sum = 0
number.times do
  # Вызываем метод вращения кубика
  show_rolling_die
  s = rand(6) + 1
  puts s
  sum += s
end
puts "Сумма выпавших чисел равна #{sum}"
