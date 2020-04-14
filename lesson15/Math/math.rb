puts "Значение числа Пи: #{Math::PI.to_s}"
puts "Значение экспопненты (е): #{Math::E.to_s}"

sum = Math.sin(Math::PI) + Math.cos(Math::PI)
puts "Сумма sin(пи) и cos(пи) равна: " + sum.round(2).to_s
