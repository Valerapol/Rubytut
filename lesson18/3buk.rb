if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
filename = File.dirname(__FILE__) + "/data/file.txt"
f = File.read(filename, encoding: 'UTF-8')
clean_f = f.gsub(/[,\(\)\.\-;:\?\!\"«»]/, '')
words = clean_f.split
puts words.count { |w| w =~ /^\S{3}$/ }
count = 0
for item in words do
  if item =~ /^\S{3}$/
    count += 1
  end
end
puts "Количество слов в файле, состоящих из трех букв - #{count}"
