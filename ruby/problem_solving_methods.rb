# Release 0
def search_array (arr, num)
  index = 0


  while index < arr.length
    break if arr[index] == num
    index +=1
  end

  if index >= arr.length
    return nil
  end

  index

end

arr = [42, 89, 23, 1, 6]
p search_array(arr, 42)

# Release 1
def fib(num)
  arr = []
  index = 0
  index2 = index+1
  counter = 0
  sum = 0

  while counter != num
    if arr.length < 2
      arr.push(arr.length)
    else
      sum = arr[index] + arr[index2]
      arr.push(sum)
      index += 1
      index2 += 1
    end
    counter += 1
  end

  arr
end

p fib(100)[-1] == 218922995834555169026