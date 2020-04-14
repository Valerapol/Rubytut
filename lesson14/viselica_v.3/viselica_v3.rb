current_part = "./" + File.dirname(__FILE__)
require current_part + "/game.rb"
require current_part + "/result_printer.rb"
require current_part + "/word_reader.rb"

printer = ResultPrinter.new
reader = WordReader.new
slovo = reader.read_from_file(current_part + '/data/words.txt')
if (Gem.win_platform?)
  slovo = slovo.dup
    .force_encoding("IBM866")
    .encode("IBM866", "cp1251")
    .encode("UTF-8")
end
game = Game.new(slovo)

while game.status == 0 do
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)
