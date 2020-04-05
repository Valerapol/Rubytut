game = ["камень", "ножницы", "бумага"]
puts "Введите вариант: 0 - камень, 1 - ножницы, 2 - бумага"
var = gets.to_i
puts "Вы выбрали " + game[var]
comp = rand(3)
puts "Компьютер выбрал " + game[comp]
if var == comp
    abort "Ничья ))"
elsif var == 0 && comp == 1
    abort "Вы победили"
elsif var == 1 && comp == 2
    abort "Вы победили"
elsif var == 2 && comp == 0
    abort "Вы победили"
else
    puts "Вы проиграли"
end
