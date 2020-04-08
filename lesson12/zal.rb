require_relative "body_builder"
def cls
  system "clear" or system "cls"
end
kachok1 = BodyBuilder.new
kachok2 = BodyBuilder.new
kachok3 = BodyBuilder.new
continue = false
choice = 0
choice2 = nil
while continue == false do
  cls
  puts "Прокачиваем первого качка.\nКакую группу мышц будем прокачивать?\n1. Бицепс\n2. Трицепс\n3. Дельтовидка"
  choice = STDIN.gets.to_i
  case choice
  when 1
    choice = "biceps"
  when 2
    choice = "triceps"
  when 3
    choice = "deltovidka"
  end
  kachok1.pump(choice)
  cls
  puts "Прокачаем еще этого качка или перейдем к следующему?\nКачаем - y(*), переход к другому - n"
  choice2 = STDIN.gets.chomp
  continue = true if choice2 == "n"
end
continue = false
choice = 0
choice2 = nil
while continue == false do
  cls
  puts "Прокачиваем второго качка.\nКакую группу мышц будем прокачивать?\n1. Бицепс\n2. Трицепс\n3. Дельтовидка"
  choice = STDIN.gets.to_i
  case choice
  when 1
    choice = "biceps"
  when 2
    choice = "triceps"
  when 3
    choice = "deltovidka"
  end
  kachok2.pump(choice)
  cls
  puts "Прокачаем еще этого качка или перейдем к следующему?\nКачаем - y(*), переход к другому - n"
  choice2 = STDIN.gets.chomp
  continue = true if choice2 == "n"
end
continue = false
choice = 0
choice2 = nil
while continue == false do
  cls
  puts "Прокачиваем третьего качка.\nКакую группу мышц будем прокачивать?\n1. Бицепс\n2. Трицепс\n3. Дельтовидка"
  choice = STDIN.gets.to_i
  case choice
  when 1
    choice = "biceps"
  when 2
    choice = "triceps"
  when 3
    choice = "deltovidka"
  end
  kachok3.pump(choice)
  cls
  puts "Прокачаем еще этого качка или перейдем к соревнованиям?\nКачаем - y(*), переход - n"
  choice2 = STDIN.gets.chomp
  continue = true if choice2 == "n"
end
cls
puts "\nПервый бодибилдер:"
kachok1.show_musculs
puts "\nВторой бодибилдер:"
kachok2.show_musculs
puts "\nТретий бодибилдер:"
kachok3.show_musculs
