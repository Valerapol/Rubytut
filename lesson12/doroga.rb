require_relative "bridge"

puts "Поехали"

sleep 2

puts "Внезапно река!"
sleep 2
bridge = Bridge.new
sleep 2
if !bridge.is_opened?
  bridge.open
end
sleep 2
puts "Поехали дальше"
puts bridge.is_opened?.to_s
