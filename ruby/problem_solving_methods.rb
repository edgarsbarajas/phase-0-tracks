######## Release 0 ########
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

######## Release 1 ########
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



######### Release 2 - Insertion sort algorithm #########
# Define method that takes an array of integers
# Define new array in the method that will be returned
# Push first array element to new array, delete it from orginal array
# iterate through original array passed in
# define new index variable used to iterate
# loop while new index < new array length
# if element <= new[new index]
#   new insert(new index at element index), break
# elsif new index == new.length -1
#   new insert(new index+1 at element index), break, end
# new index += 1
# return new array

def insertion_sort(array)
    final = [array[0]]
    array.delete_at(0)
    # main code
    for i in array
        final_index = 0
        while final_index < final.length
            if i <= final[final_index]
                final.insert(final_index,i)
                break
            elsif final_index == final.length-1
                final.insert(final_index+1,i)
                break
            end
            final_index+=1
        end
    end
    # output
    final
end

array = [1, 5, 3, 4, 6, 3]
p insertion_sort(array)

