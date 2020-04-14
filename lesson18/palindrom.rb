original_string = gets.chomp.downcase.delete(" ,.?!/;:'\"\\|@\#$%^&*()-+=*_`~")

revert_string = original_string.reverse
puts revert_string
if revert_string == original_string
  puts "Да. Это палиндром."
else
  puts "Нет. Это не палиндром."
end
