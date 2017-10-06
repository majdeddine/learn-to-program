#Making .factorial an Integer method
  class Integer
    def factorial
      if self < 0
        return nil
      elsif self == 0 || self == 1
        return 1
      else
        result = self * (self-1).factorial
      end
    end
  end
