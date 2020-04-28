if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
puts "Ведите первое число:"
a = STDIN.gets.chomp.to_f
puts "Ведите второе число:"
b = STDIN.gets.chomp.to_f
puts "Выберите операцию (+ - * /)"
op = STDIN.gets.chomp
case op
when "+"
  puts "Результат: " + (a + b).to_s
when "-"
  puts "Результат: " + (a - b).to_s
when "*"
  puts "Результат: " + (a * b).to_s
when "/"
  puts "Результат: " + (a / b).to_s
else
  puts "Нет такой операции!"
end
