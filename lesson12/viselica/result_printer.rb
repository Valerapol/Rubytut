class ResultPrinter

  def cls
    system "clear" or system "cls"
  end

  def print_status(game)
    cls
    puts "\nСлово: " + get_word_for_print(game.letters, game.good_letters)

    puts "Ошибки (#{game.errors}): #{game.bad_letters.join(", ")}"

    print_viselica(game.errors, game.status)

    if game.errors >= 7
      puts "Вы проиграли :("
    else
      if (game.letters - game.good_letters).empty?
        puts "Поздравляем! Вы выиграли! \n\n"
      else
        puts "У вас осталось попыток: " + (7 - game.errors).to_s
      end
    end
  end

  def get_word_for_print(letters, good_letters)
    @result = ""
    for letter in letters do
      if good_letters.include? letter
        @result += letter + " "
      else
        @result += "__ "
      end
    end
    return @result
  end

  def print_viselica(errors, status)
    if status == 1
      puts "
      _________
      |/
      |
      |
      |
      |
      |
      |    _______
      |    |     |
    __|____|_____|__
    |              |
      "
      return
    end
    case errors
    when 0
      puts "
      _________
      |/
      |
      |
      |
      |
      |
      |    _______
      |    |     |
    __|____|_____|__
    |              |
      "
    when 1
      puts "
      _________
      |/
      |      ( )
      |
      |
      |
      |
      |    _______
      |    |     |
    __|____|_____|__
    |              |
      "
    when 2
      puts "
      _________
      |/
      |      ( )
      |       |
      |
      |
      |
      |    _______
      |    |     |
    __|____|_____|__
    |              |
      "
    when 3
      puts "
      _________
      |/
      |      ( )
      |      _|_
      |         \\
      |
      |
      |    _______
      |    |     |
    __|____|_____|__
    |              |
      "
    when 4
      puts "
      _________
      |/
      |      ( )
      |      _|_
      |     /   \\
      |
      |
      |    _______
      |    |     |
    __|____|_____|__
    |              |
      "
    when 5
      puts "
      _________
      |/
      |      ( )
      |      _|_
      |     / | \\
      |       |
      |
      |    _______
      |    |     |
    __|____|_____|__
    |              |
      "
    when 6
      puts "
      _________
      |/
      |      ( )
      |      _|_
      |     / | \\
      |       |
      |      / \\
      |    _/___\\_
      |    |     |
    __|____|_____|__
    |              |
      "

    when 7
      puts "
      _________
      |/      |
      |      (_)
      |      _|_
      |     / | \\
      |       |
      |      / \\
      |     /   \\
      |
    __|_____________
    |              |
      "
    end
  end
end
