def factorial(num)
  # write a recursive method for calculating the [factorial](https://simple.wikipedia.org/wiki/Factorial) of a number
  if (num < 0)
    return nil
  end
  if(num == 0) # base case 
    return 1
  else
    return num * factorial(num - 1)
  end
  
end
