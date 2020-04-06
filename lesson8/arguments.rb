
argument  = ARGV[0]

if (Gem.win_platform?)
  argument = argument.encode(ARGV[0].encoding, "cp1251")
end
if (argument == "дурак")
  puts "сам дурак!"
else
  puts "Здравствуй, дорогой!"
end
