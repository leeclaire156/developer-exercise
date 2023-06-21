class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
  # splits string by spaces
    array = str.split(" ")
  
    marklarizedArray = []
    tempArray = []

  # returns word back if its less 4 character or less, returns appropriate M/marklar for others
    array.map do |x|
      if x.length < 5 
        marklarizedArray.push(x)
      elsif x =~ /\p{P}/
        tempArray = x.split(/\p{P}/), x.scan(/\p{P}/)
        tempArray2 = tempArray.flatten
        if tempArray2[0] =~ /[A-Z]/
          tempArray2[0] = "Marklar"
        else
          tempArray2[0] = "marklar"
        end
        tempArray2 = tempArray2.join
        marklarizedArray.push(tempArray2)
      elsif x =~ /[A-Z]/
        marklarizedArray.push("Marklar")
      else
        marklarizedArray.push("marklar")
      end
    end

  # Puts string back together
    marklarizedString = []
    i = 0
    while i < marklarizedArray.length
      if i == 0
        marklarizedString.push("#{marklarizedArray[i]} ")
      elsif i == marklarizedArray.length - 1
        marklarizedString.push("#{marklarizedArray[i]}")
      else
        marklarizedString.push("#{marklarizedArray[i]} ")
      end
      i += 1
    end
    
    marklarizedString = marklarizedString.join("")
    
    return marklarizedString
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    #fibonacci sequence
    array = [1, 1]
    i = 2
    while i < nth
      a = array[i - 1]
      b = array[i - 2]
      array.push(a+b)
      i+=1 
    end

    #takes out only even int in fibonaccci sequence
    arrayEvensOnly = []
    j = 0
    array.map do |x|
      if x.remainder(2) == 0
        arrayEvensOnly.push(x)        
      end
    end
    
    return arrayEvensOnly.sum
  end
end