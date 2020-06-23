if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
hash_1 = {
  "хлеб" => 5,
  "масло" => 10,
  "сыр" => 15
}
hash_2 = {
  "фэйри" => 2,
  "мыло" => 1,
  "мочалка" => 5
}
all = hash_1.merge(hash_2)
puts all
