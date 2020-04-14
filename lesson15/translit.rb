require "translit"
puts "Введите фразу для транслитерации:"
phrase = STDIN.gets.encode("UTF-8").chomp
puts Translit.convert(phrase)
