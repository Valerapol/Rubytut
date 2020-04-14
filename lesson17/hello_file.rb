current_path = File.dirname(__FILE__)
file = File.new(current_path + "/" + "hello.txt", "a:UTF-8")
file.puts("Hello, file!")
file.close
