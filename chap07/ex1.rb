#99 bottles of beer on the wall.
# total= 99
# numbers = [*0..total].reverse
# def bottle(n)
#   if n == 1
#    return "bottle"
#  else
#    return "bottles"
#  end
# end
#  lyrics = [*0..numbers.length-2].map!{|i|"#{numbers[i]} #{bottle(numbers[i])} of beer on the wall, #{numbers[i]} #{bottle(numbers[i])} of beer.\nTake one down, pass it around, #{numbers[i+1]} #{bottle(numbers[i+1])} of beer on the wall." }
# puts lyrics.join("\n\n")
###############################################################################
#Refactor 99 bottles of beer on the wall.
number_of_bottles = 99
def bottle(n)
if n == 1
  return "bottle"
else
  return "bottles"
end
end
arr = []
number_of_bottles.downto(1){|i| arr.push("#{i} #{bottle(i)} of beer on the wall, #{i} #{bottle(i)} of beer.
Take one down and pass it around,#{i-1} #{bottle(i-1)} of beer on the wall.")}
puts arr.join("\n\n")
