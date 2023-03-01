data = [17,3,6,9,15,8,6,1,10]

def stock_picker(arr)
  best = [[0,0],0]
  arr.each_with_index do |buy_price, buy_day|
    arr.each_with_index do |sell_price, sell_day|
      if buy_day < sell_day
        if sell_price-buy_price > best[1]
          best[0][0] = buy_day
          best[0][1] = sell_day
          best[1] =  sell_price-buy_price
        end
      end
    end
  end
  best[0]
end

p stock_picker(data)