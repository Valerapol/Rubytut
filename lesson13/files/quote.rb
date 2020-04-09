file_path = File.dirname(__FILE__) + '/data/quotes.txt'

if File.exist?(file_path)
  f = File.new(file_path, 'r:UTF-8')
  lines = f.readlines
  f.close
  puts 'Афоризм дня:'
  puts lines.sample
else
  puts 'Файл не найден'
end
