# Этот код обязательно при работе с юникодом на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
def method
  c = 3
  puts "Переменная '$a': #{defined?($a)}"
  puts "Переменная 'b': #{defined?(b)}"
  puts "Переменная 'c': #{defined?(c)}"
end
$a = 1
b = 2
method
puts "Переменная '$a': #{defined?($a)}"
puts "Переменная 'b': #{defined?(b)}"
puts "Переменная 'c': #{defined?(c)}"
