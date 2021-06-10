def bubble_sort(arr)
  position = 0

  arr.each do |value|
    left = value
    left_idx = arr.find_index(left)
    light_idx = left_idx + 1
    right = arr[arr.find_index(value) + 1]
    if left > right

  end
end
