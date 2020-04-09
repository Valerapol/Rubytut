class Person
  def initialize(first_name, middle_name, age)
    @first_name = first_name
    @middle_name = middle_name
    @age = age
  end

  def old?
    if (@age > 60)
      @old = true
      return "#{@first_name} #{@middle_name}\nЕму #{@age} - пожилой"
    else
      @old = false
      return "#{@first_name}\nЕму #{@age} - молодой"
    end
  end

  def favorite_move=(film)
    @favorite_move = film
  end

  def favorite_move?
    puts "Его любимый фильм \"#{@favorite_move.film}\"
Режисер: #{@favorite_move.director}"
  end
end
