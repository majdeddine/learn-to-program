#Roman to integer
def roman_to_integer roman
  roman.upcase!
  hash=
  {"M" => 1000,
   "D" => 500,
   "C" => 100,
   "L" => 50,
   "X" => 10,
   "V" => 5,
   "I" => 1}
  arr_num = roman.chars.map{|r| hash[r]}
  if arr_num.include?(nil)
    return "#{roman} is not a valid roman numeral!!"
  else
    arr_num= arr_num.reverse
    ref=[0]
    i = 0
    while i < arr_num.length
      if arr_num[i] >= ref.last
        ref << arr_num[i]
      else
        ref << (-1 *arr_num[i])
      end
      i+=1
    end
    number = ref.inject{|sum,n| sum+=n}

  end
end
