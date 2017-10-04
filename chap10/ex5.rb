#Ninety-nine bottles using english _number
require_relative 'ex4'

number_of_bottles = 99
def bottle(n)
if n == 1
  return "bottle"
else
  return "bottles"
end
end
arr = []
number_of_bottles.downto(1){|i| arr.push("#{english_number(i).capitalize} #{bottle(i)} of beer on the wall, #{english_number(i)} #{bottle(i)} of beer.
Take one down and pass it around,#{english_number(i-1)} #{bottle(i-1)} of beer on the wall.")}
puts arr.join("\n\n")
