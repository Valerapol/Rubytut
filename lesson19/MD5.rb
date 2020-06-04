# Этот код обязательно при работе с юникодом на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
require "digest"
puts "Введите слово или фразу для шифрования:"
phrase = STDIN.gets.chomp
metod = 0
until (metod == 1 or metod == 2) do
  puts "Выберите метод шифрования:\n1) MD5\n2) SHA1"
  metod = STDIN.gets.chomp.to_i
end
puts "Вот что получилось:"
case metod
when 1
  puts Digest::MD5.hexdigest(phrase)
when 2
  puts Digest::SHA1.hexdigest(phrase)
end
