puts "Привет. Я твой дневник"
puts "Я сохраню всё, что ты запишешь до строчки \"end\" или пустой строки в файл."
puts

current_path = File.dirname(__FILE__)

line = nil
all_lines = []

while line != "end" && line != "" do
  line = STDIN.gets.encode("UTF-8").chomp
  all_lines << line
end

time = Time.now
file_name = time.strftime("%Y-%m-%d")
time_string = time.strftime("%H:%M")
separator = "-------------------------------------"
file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8") # a:UTF-8 - открыть файл для дозаписи в кодировке UTF-8, если файл не существует, то создать его
file.print("\n\r" + time_string + "\n\r")
all_lines.pop
for item in all_lines do
  file.puts(item)
end
file.puts(separator)
file.close
puts "Запись сохранена в файле #{file_name}.txt"
