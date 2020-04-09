require_relative "film"
require_relative "person"
person1 = Person.new("Гаврила", "Петрович", 25)
person2 = Person.new("Фёдор", "Петрович", 40)
person3 = Person.new("Василий", "Алибабаевич", 65)
person1.favorite_move = Film.new("Квентин Тарантино", "Криминальное чтиво")
person2.favorite_move = Film.new("Роберт Родригес", "Дети шпионов")
person3.favorite_move = Film.new("Эльдар Рязанов", "Гараж")
puts "У нас есть три человека"
puts person1.old?
puts person1.favorite_move?
puts person2.old?
puts person2.favorite_move?
puts person3.old?
puts person3.favorite_move?
