kol = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "Вот такая палка колбасы у нас есть:\n #{kol.to_s}\nСколько первых элементов вам отрезать?"
num = gets.chomp.to_i
kol_otr = kol.take(num)
puts "Вот ваша колбаса:\n#{kol_otr.to_s}"
