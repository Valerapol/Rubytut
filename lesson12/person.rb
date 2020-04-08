class Person
  def initialize(first_name, middle_name, age)
    @first_name = first_name
    @middle_name = middle_name
    @age = age
  end

  def old?
    if (@age > 60)
      @old = true
      return "#{@first_name} #{@middle_name}\nИ ему #{@age} - пожилой"
    else
      @old = false
      return "#{@first_name}\nИ ему #{@age} - молодой"
    end
  end
end
