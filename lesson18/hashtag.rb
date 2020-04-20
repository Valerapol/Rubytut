if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__
  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
puts "Введите строку с хештегом:"
string = STDIN.gets.chomp
hash_string = string.scan(/#[[:word:]]+/)
puts "хештеги: " + hash_string.join(", ")
