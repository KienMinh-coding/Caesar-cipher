def bubble_sort(arr)
    if check(arr) == true
      return arr
    else
      swapping(arr)
    end
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
  result
  arr.each
end

bubble_sort([4,3,78,2,0,2])
