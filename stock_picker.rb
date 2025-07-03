def stock_picker (array)
  diff_array = Array.new(array.length) {Array.new(0)}
  #puts diff_array
  day = 0
  number_of_days = array.length
  max_diff = 0
  buy_day = 0
  sell_day = 0
  for buy_sell_array in diff_array
    #puts "This is the arrray #{array[day...number_of_days]}"
    #puts day
    diff_array[day] = array[day...number_of_days].reduce([]) {|acc, val| acc.push(val - array[day])}
    #puts "This is the day #{diff_array[day]}"
    if diff_array[day].max > max_diff
      max_diff = diff_array[day].max
      buy_day = day
      sell_day = diff_array[day].index(diff_array[day].max) + buy_day
    end
    day += 1
  end
  best_days_to_buy_sell = [buy_day, sell_day]
end

#test 1
stocks = [1,2,3,2,7]
puts "stock to pick #{stock_picker(stocks)}"

#test 2
stocks = [13, 7, 12, 11, 15 , 1]
puts "stock to Pick #{stock_picker(stocks)}"

#test 3
stocks = [10,3,5,6,2,10]
puts "stock to pick #{stock_picker(stocks)}"