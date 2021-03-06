#English number
def english_number (number)
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number
  write = left/(10**21)
  left -= write * (10**21)
  if write > 0
    sextillions = english_number(write)
    num_string += sextillions + ' sextillion'

    if left > 0
      num_string += ' '
    end
  end

  write = left/(10**18)
  left -= write * (10**18)
  if write > 0
    quintillions = english_number(write)
    num_string += quintillions + ' quintillion'

    if left > 0
      num_string += ' '
    end
  end

  write = left/(10**15)
  left -= write * (10**15)
  if write > 0
    quadrillions = english_number(write)
    num_string += quadrillions + ' quadrillion'

    if left > 0
      num_string += ' '
    end
  end

  write = left/(10**12)
  left -= write * (10**12)
  if write > 0
    trillions = english_number(write)
    num_string += trillions + ' trillion'

    if left > 0
      num_string += ' '
    end
  end

  write = left/(10**9)
  left -= write * (10**9)
  if write > 0
    billions = english_number(write)
    num_string += billions + ' billion'

    if left > 0
      num_string += ' '
    end
  end

  write = left/(10**6)
  left -= write * (10**6)
  if write > 0
    millions = english_number(write)
    num_string += millions + ' million'

    if left > 0
      num_string += ' '
    end
  end

  write = left/1000
  left -= write * 1000
  if write > 0
    thousands = english_number(write)
    num_string += thousands + ' thousand'

    if left > 0
      num_string += ' '
    end
  end


  write = left/100
  left -= write * 100

  if write > 0
    hundreds = english_number(write)
    num_string += hundreds + ' hundred'
    if left > 0
    num_string += ' '
    end
  end

  write = left/10
  left -= write*10

  if write >0
    if ((write == 1) and (left>0))
      num_string+= teenagers[left-1]
      left =0
    else
      num_string+= tens_place[write-1]
    end
    if left > 0
      num_string += '-'
    end
  end

  write = left
  left = 0
  if write > 0
    num_string+= ones_place[write-1]
  end
  num_string
end
