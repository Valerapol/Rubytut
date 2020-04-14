time = Time.now
week_day = time.wday
day = time.strftime("%d.%m")
filename = File.dirname(__FILE__)
f = File.new(current_path + "/data/holidays.txt", 'r:UTF-8')
holidays << f.readlines
f.close
for day in holidays
  day.chomp!
end
if week_day == 0 || week_day == 6 || holidays.include?(day)
  puts 'Сегодня выходной!'
else
  puts 'Сегодня будний день, за работу!'
end
