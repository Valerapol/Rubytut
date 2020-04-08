class Bridge
  def initialize
    puts "мост создан"
    @opened = false
  end
  def open
    puts "мост открыт"
    @opened = true
  end
  def is_opened?
    return @opened
  end
end
