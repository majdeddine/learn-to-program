#Leap years
puts "Starting year :"
starting_year = gets.chomp.to_i
puts "Ending year :"
ending_year = gets.chomp.to_i
leap_years = [*starting_year..ending_year].select do |y|
  y if (y%4 == 0 && y % 100 != 0) || (y % 4 == 0 && y % 400 == 0)
end
puts leap_years
