temp = ARGV[0]
season = ARGV[1]
answer1 = "Скорее идите в парк, соловьи поют"
answer2 = "Сейчас соловьи молчат, греются или прохлаждаются :)"
if (Gem.win_platform? && ARGV[0] && ARGV[1])
  temp = temp.dup
    .force_encoding("IBM866")
    .encode("IBM866", "cp1251")
    .encode("UTF-8")
    season = season.dup
      .force_encoding("IBM866")
      .encode("IBM866", "cp1251")
      .encode("UTF-8")
end

if temp == nil
  while temp == nil do
  puts "Какая сейчас температура? (вводите только цифры)"
  temp = STDIN.gets.chomp
  end
end
if season == nil
  while season == nil do
    puts "Какое сейчас время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
    season = STDIN.gets.chomp
  end
end

if season == "1"
  if temp >= "15" && temp <= "35"
    puts answer1
  else
    puts answer2
  end
else
  if temp >= "22" && temp <= "30"
    puts answer1
  else
    puts answer2
  end
end
