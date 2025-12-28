def total_integers(array)
  # Count the total number of integers inside of the given array
  # The array may be nested, and the integers inside these "inner" layers must also be counted
  #
  # Example: `total_integers([0, 1, [5]]) == 3`
  #
  # NOTE: you may notice that `Array#flatten` would make quick work of this,
  # but you should implement this method without using it. The tests will check
  # to make sure `#flatten` isn't used.
  # 
  if(array.length == 0)
    return 0
  else
    result = 0
    array.each do |element|
      if(element.is_a?(Array))
        result += total_integers(element)
      elsif(element.is_a?(Integer))
        result += 1
      end
    end
    return result
  end
end
