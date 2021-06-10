def stock_picker(arr) 
  pairs = arr.reduce({}) do |result, price|
    buy_day = arr.find_index(price)
    new_arr = arr[(buy_day + 1)..-1].select { |value| value > price }
    if new_arr != []
      sell_price = new_arr.max
      profit = sell_price - price
      sell_day = arr.find_index(sell_price)
      result[[buy_day, sell_day]] = profit
      result
    else
      result
    end
  end
    pairs.max_by{|k,v| v}[0]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
