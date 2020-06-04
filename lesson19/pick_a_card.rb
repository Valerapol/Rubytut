# Этот код обязательно при работе с юникодом на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# Массивы с наборами мастей и достоинств
values = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
suits = ['♠', '♥', '♦', '♣'] # Буби, Черви, Крести, Пики

# Выведем произвольную карты, выбрав по одному элементу из массивов
puts "#{values.sample}#{suits.sample}"
