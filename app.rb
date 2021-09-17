def stock_picker(ary)
  h = {}
  best_days = []
  ary[1..-1].each do |sell_price|
    ary[0..-2].each do |buy_price|
      if ary.index(buy_price) < ary.index(sell_price)
        h[sell_price - buy_price] = [buy_price, sell_price]
      end
    end
  end
  sorted_h = h.sort_by { | profit, days | profit }
  best_prices = sorted_h[-1][1]
  best_days << ary.index(best_prices[0])
  best_days << ary.index(best_prices[1])
  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])