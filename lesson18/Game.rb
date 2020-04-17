if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__
  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
require_relative "methods.rb"
regexp_string = get_random_regexp_string
puts "Найдите как можно больше слов," \
"содержащих шаблон '#{regexp_string.gsub('.', '*')}'"
puts "Для выхода нажмите клавишу \"Ввод\" без ввода слова."
count = 0
loop do
  word = STDIN.gets.chomp
  if word == ""
    break
  end
  if word_exist?(word)
    if word =~ /#{regexp_string}/
      puts ".. OK =)"
      count += 1
    else
      puts "Нет такого слова!"
    end
  end
end
puts "Игра закончена. Ваш счет: #{count}"
