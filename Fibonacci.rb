def fibs(number)
  if number.negative?
    puts 'Not happenin\' bud'
    return
  end
  iterator = 0
  output_arr = []
  while iterator <= number - 1
    case iterator
    when 0
      output_arr.push(0)
    when 1
      output_arr.push(1)
    else
      output_arr.push(output_arr[iterator - 2] + output_arr[iterator - 1])
    end
    iterator += 1
  end
  p output_arr
end

def fibs_rec(number, arr = [])
  if number <= 2 # base case
    (0...number).each { |i| arr << i } # push 0 through number non-inclusive into array
    return arr # and return it
  end

  arr = fibs_rec(number - 1)  #retrieve array returned from calling on previous number
  arr << arr[-2] + arr[-1]  # push sum of last two elements
end

fibs(8)
p fibs_rec(8)