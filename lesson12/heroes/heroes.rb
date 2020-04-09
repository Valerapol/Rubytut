puts "Врага какого персонажа вы хотите узнать?:"
heroes = STDIN.gets.encode("UTF-8").chomp
name = heroes.downcase
case name
when "бэтмен", "batman"
  puts "Джокер"
when "sherlok holms", "шерлок холмс"
  puts "Профессор Мориарти"
when "буратино", "pinocio"
  puts "Карабас-Барабас"
when "frodo", "frodo baggins", "фродо", "фродо бэггинс", "полурослик", "хоббит", "hobbit"
  puts "Саурон"
when "harry potter", "гари поттер"
  puts "Лорд Волдеморд"
when "mocart", "моцарт"
  puts "Сольери"
else
  puts "Я не знаю такого героя и не могу найти его врага."
end
