#Birthday helper!
hash ={}
 File.open("birthdays_file.txt").each do
    |line| hash[line.split(",")[0].chomp]= line.split(", ")[1..-1]
  end
puts "Enter a name:"
name = gets.chomp
  if hash[name] == nil
    puts"Sorry the name that you are searching for is not in our database!"
  else
    puts hash[name].first
  end
