file = ARGV[0]
if file == nil
  abort 'Укажите имя файла в качестве аргумента программы'
end
# encoding
if (Gem.win_platform? && ARGV[0])
  file = file.dup
    .force_encoding("IBM866")
    .encode("IBM866", "cp1251")
    .encode("UTF-8")
end
file_path = File.dirname(__FILE__) + "/" + file
if File.exist?(file_path)
  f = File.new(file_path, 'r:UTF-8')
  lines = f.readlines
  f.close
  puts "Открыли файл: #{file_path}"
  puts "Всего строк: #{lines.length}"
  puts "Пустых строк: #{lines.count("\n")}"
  last_lines = lines.last(5)
  puts "Последние 5 строк файла:"
  puts last_lines
else
  puts 'Файл не найден'
end
