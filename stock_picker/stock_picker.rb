require 'pry'

def stock_picker(arr)
  lowest_day = arr.find_index(arr.min)
  new_arr = arr.drop(lowest_day)
end


puts stock_picker([17,3,6,9,15,8,6,1,10])
