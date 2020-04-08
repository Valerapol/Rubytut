require_relative "person"
person1 = Person.new("Гаврила", "Петрович", 25)
person2 = Person.new("Фёдор", "Петрович", 40)
person3 = Person.new("Василий", "Алибабаевич", 65)
puts "У нас есть три человека"
puts person1.old?
puts person2.old?
puts person3.old?
