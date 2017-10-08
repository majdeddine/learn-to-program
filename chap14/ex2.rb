#Grandfather clock
def grandfather_clock &block
   hour = Time.new.hour

  if hour <= 12
    hour = 12 if hour == 0
    hour
  else
    hour-=12
  end
  hour.times {block.call}
end
puts grandfather_clock {puts"dong"}
