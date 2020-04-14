current_path = File.dirname(__FILE__)

f = File.new(current_path + "/foreheads.txt", 'r:UTF-8')
forehead = f.readlines
f.close
f = File.new(current_path + "/eyes.txt", 'r:UTF-8')
eye = f.readlines
f.close
f = File.new(current_path + "/nose.txt", 'r:UTF-8')
nose = f.readlines
f.close
f = File.new(current_path + "/mouths.txt", 'r:UTF-8')
mouth = f.readlines
f.close
time = Time.now
filename = "face " + time.strftime("%y.%m.%d %H-%M-%S") + ".txt"
file = File.new(current_path + "/" + filename, "a:UTF-8")
file.puts(forehead.sample)
file.puts(eye.sample)
file.puts(nose.sample)
file.puts(mouth.sample)
file.close
