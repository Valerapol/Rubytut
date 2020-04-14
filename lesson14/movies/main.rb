file_path = File.dirname(__FILE__) + "/data/movies.txt"
if File.exist?(file_path)
  f = File.new(file_path, 'r:UTF-8')
  lines = f.readlines
  f.close
  number = rand(lines.length)
  if (number % 2 != 0)
    number -= 1
  end
  puts "Сегодня Вам предлагается к просмотру фильм:"
  puts lines[number]
  puts lines[number + 1]
else
  puts "Файл не найден!"
end
