#Deaf grandma
while true
  huh = gets.chomp!
  if huh != huh.upcase
    puts"HUH?! SPEAK UP, SONNY!"
  elsif huh=="BYE"
    puts"BYE SONNY!"
    break
  else
    puts"NO, NOT SINCE #{1930+rand(21)}"
    end
end
