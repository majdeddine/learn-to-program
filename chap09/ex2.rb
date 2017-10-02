#Old-school Roman numerals.
  def dec(num)
    key = [1000, 500, 100, 50, 10, 5, 1]
    value = ["M", "D", "C", "L", "X", "V", "I"]
    [*0..key.length-1].map!{|i| key[i] == 1000? value[i]*(num / key[i])  : value[i]*(num % key[i-1] / key[i])  }.join
  end
