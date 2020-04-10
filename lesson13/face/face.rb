f = File.new("./foreheads.txt", 'r:UTF-8')
forehead = f.readlines
f.close
f = File.new("./eyes.txt", 'r:UTF-8')
eye = f.readlines
f.close
f = File.new("./nose.txt", 'r:UTF-8')
nose = f.readlines
f.close
f = File.new("./mouths.txt", 'r:UTF-8')
mouth = f.readlines
f.close
puts forehead.sample
puts eye.sample
puts nose.sample
puts mouth.sample
