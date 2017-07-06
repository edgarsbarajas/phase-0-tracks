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
p search_array(arr, 422)