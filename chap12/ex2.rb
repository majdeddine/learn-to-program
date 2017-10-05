#Happy birthday!
puts "Enter the year in which you was born :"
year = gets.chomp.to_i
puts "Enter the month in which you was born:"
month = gets.chomp.to_i
puts "Enter the day in which you was born :"
day = gets.chomp.to_i
now = Time.new
born = Time.local(year, month, day)
age = now.year - born.year
 if now.month >= born.month && now.day >= born.day
   age.times{puts "Spank!"}
   puts age
 else
   (age-1).times{puts "Spank!"}
   puts age-1
 end
