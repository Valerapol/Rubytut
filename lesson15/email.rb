require "pony"
require "io/console"
my_mail = "yurjevec-elset@yandex.ru"
puts "Введите пароль от вашей почты #{my_mail} для отправки письма:"
pass = STDIN.noecho(&:gets).chomp
puts "Кому отправить письмо?:"
send_to = STDIN.gets.chomp
puts "Введите тему письма:"
subject = STDIN.gets
puts "Что написать в письме?:"
body = STDIN.gets
begin
  Pony.mail(
    {
      :subject => subject,
      :body => body,
      :to => send_to,
      :from => my_mail,
      :via => :smtp,
      :via_options => {
        :address => 'smtp.yandex.ru',
        :port => '465',
        :tls => true,
        :user_name => my_mail,
        :password => pass,
        :authentication => :plain
      }
    }
  )
  puts "Письмо успешно отправлено"
rescue SocketError
  puts "Не могу соединиться с сервером. "
rescue Net::SMTPSyntaxErroro => error
  puts "Вы некоректно задали параметры письмаЖ " + error.message
rescue Net::SMTPAuthenticationError => error
  puts "Вы не правильно указали пароль: " + error.message
end
