def star_array(num)
  pogon = ""
  while pogon.length < num
    pogon += "*"
  end
  puts "Вот ваши звезды :)\n#{pogon}"
end
puts "Сколько вам звезд на погоны?"
star = gets.to_i
star_array(star)
