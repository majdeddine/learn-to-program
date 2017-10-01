#99 bottles of beer on the wall.
total= 99
numbers = [*0..total].reverse
def bottle(n)
  if n == 1
   return "bottle"
 else
   return "bottles"
 end
end
 lyrics = [*0..numbers.length-2].map!{|i|"#{numbers[i]} #{bottle(numbers[i])} of beer on the wall, #{numbers[i]} #{bottle(numbers[i])} of beer.\nTake one down, pass it around, #{numbers[i+1]} #{bottle(numbers[i+1])} of beer on the wall." }
puts lyrics.join("\n\n")
