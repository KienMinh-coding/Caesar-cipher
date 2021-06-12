def bubble_sort(arr)
  check(arr) == true ? arr : swapping(arr)  
end

def swapping(arr)
  for i in 0..(arr.size - 2)
    if arr[i] > arr[i+1]
      arr[i], arr[i+1] = arr[i+1], arr[i]
      arr
    else
      arr
    end
  end
  bubble_sort(arr)
end

def check(arr)
  result = false
  for i in 0..(arr.size - 2)
    if arr[i] <= arr[i+1]
      result = true
    else
      result = false
      break
    end
  end
  result
end

puts bubble_sort([10, 2, 6, 2, 1, 5, 8, 6, 0, 2, 8, 9])
