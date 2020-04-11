def cls
  system "clear" or system "cls"
end
def sklonenie(number, il, ila, ilov)
  ostatok = number % 100
  if (ostatok >= 11 && ostatok <= 14)
    return ilov
  end
  ostatok = number % 10
  if (ostatok == 1)
    return il
  elsif (ostatok >=2 && ostatok <= 4)
    return ila
  elsif (ostatok > 4 || ostatok == 0)
    return ilov
  end
end
# Запускаю чтение и обработку файлов
questions_path = File.dirname(__FILE__) + "/" + "questions.txt"
answer_path = File.dirname(__FILE__) + "/" + "answer.txt"
questions = []
answer = []
if File.exist?(questions_path)
  f = File.new(questions_path, 'r:UTF-8')
  q = f.readlines
  f.close
  for item in q do
    questions << item.chomp
  end
#  questions = q.map{ |x| x - "\n" }
# дописать обработку вопросов
else
  puts 'Файл не найден'
end
if File.exist?(answer_path)
  f = File.new(answer_path, 'r:UTF-8')
  an = f.readlines
  f.close
  for item in an do
    answer << item.chomp
  end
# дописать обработку ответов
else
  puts 'Файл не найден'
end
# начало викторины
# задаю начальные переменные
choice_arr = [] # массив с номерами вопросов
choice_number = nil # номер вопроса для массива
correct_answer = 0 # количество верных ответов
count = 0 # счетчик
while count < 5 do
  choice_number = rand(25)
  if choice_arr.include?(choice_number) == false
    choice_arr << choice_number
    count += 1
  end
end
for item in choice_arr do
  cls
  puts questions.at(item)
  answer_user = STDIN.gets.encode("UTF-8").chomp.downcase
  if answer.at(item).downcase == answer_user
    puts "Верно."
    correct_answer +=1
  else
    puts "Ответ не верный.\nПравильный ответ: \"#{answer.at(item)}\""
  end
  sleep 3
end
cls
puts "Вы ответили правильно на #{correct_answer.to_s} #{sklonenie(correct_answer, "вопрос", "вопроса", "вопросов")} из 5."
