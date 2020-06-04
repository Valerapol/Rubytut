# Этот код обязательно при работе с юникодом на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
num = 42
string = "Василий"
puts "В числе #{num} - #{num.size} байт."
puts "В строке #{string} - #{string.bytesize} байт."
