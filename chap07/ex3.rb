#Deaf grandma extended
count = 0
while true
  huh = gets.chomp!
  if huh != huh.upcase
    puts"HUH?! SPEAK UP, SONNY!"
    count-=1 if count != 0
  elsif huh=="BYE"
    count +=1
    if count == 3
      puts"BYE SONNY!"
      break
    else
    puts"HUH?! SPEAK UP, SONNY!"
    end
  else
    puts"NO, NOT SINCE #{1930+rand(21)}"
    count-=1 if count != 0
    end
end
