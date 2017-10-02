#Modern Roman numerals
def roman_numeral(num)
  value = ["CM", "CD", "XC", "XL", "IX", "IV", "IIII"].reverse
  old_value = ["M", "D", "C", "L", "X", "V", "I"].reverse

  roman = ""

  roman << "M"*(num/1000)
  roman << "D"*(num%1000/500)
  roman << "C"*(num%500/100)
  roman << "L"*(num%100/50)
  roman << "X"*(num%50/10)
  roman << "V"*(num%10/5)
  roman << "I"*(num%5/1)

  (0..6).each do |i|
    if i % 2 == 0
      roman.gsub!(old_value[i]*4,value[i+1]) if roman.include?(old_value[i]*4)
    else
     roman.gsub!(old_value[i]+value[i],value[i+1]) if roman.include?(old_value[i]+value[i])
    end
  end

roman

end
