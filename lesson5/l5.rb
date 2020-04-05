puts "Вы решили прогуляться и наткнулись на гопников"
choice = nil
until choice == "1" || choice == "2" do
  puts "1. Попытаться убежать"
  puts "2. Продолжать идти"
  choice = gets.chomp
end
if choice == "1"
  abort "Вас догнали и побили. Даже не знаю за что."
else
  puts "Один из ребят вышел вперед и спросил \"Сиги есть?\""
  choice = nil
  until choice == "1" || choice == "2" do
    puts "1. Дать закурить"
    puts "2. - Я не курю"
    choice = gets.chomp
  end
  if choice == "1"
    abort "Закурив, ребята отправились дальше"
  else
    abort "Ребята расстроились и побили вас. Теперь уже ясно за что"
  end
end
