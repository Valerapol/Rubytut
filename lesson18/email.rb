puts "Введите email:"
email = STDIN.gets.encode("UTF-8").chomp
if email =~ /^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/i
  puts "Спасибо!"
else
  puts "Это не email!"
end
