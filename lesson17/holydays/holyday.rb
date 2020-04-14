holidays = []
time = Time.now
week_day = time.wday
day = time.strftime("%d.%m")
filename = File.dirname(__FILE__) + "/data/holidays.txt"
f = File.new(filename, 'r:UTF-8')
holidays = f.readlines
f.close
for item in holidays
  item.chomp!
end
puts
puts day
if week_day == 0 || week_day == 6 || holidays.include?(day)
  puts 'Сегодня выходной!'
else
  puts 'Сегодня будний день, за работу!'
end
