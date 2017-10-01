#Building and sorting an array
arr=[]
while true
word = gets.chomp
 if word == ""
  break
 end
 arr << word
end
puts arr.sort
