require 'byebug'
class Array
  def my_uniq
    new_arr = []
    self.each do |i|
      new_arr << i unless new_arr.include?(i)
    end
    new_arr
  end

  def two_sum
    new_arr = []
    self.each.with_index do |el, idx|
      (idx + 1...self.length).each do |idx2|
        new_arr << [idx, idx2] if self[idx] + self[idx2] == 0
      end
    end
    new_arr
  end

  def my_transpose
    new_arr = []
    self[0].length.times do |idx|
      sub_arr = []
      self.length.times do |idx2|
        sub_arr << self[idx2][idx]
      end
      new_arr << sub_arr
    end
    new_arr
  end

  def stock_picker
    buy_sell_days = []
    best_buy_day = 0
    best_sell_day = 1
    best_profit = self[best_sell_day] - self[best_buy_day]
    self.each_with_index do |price, buy_day|
      ((buy_day + 1)...self.length).each do |sell_day|
        profit = self[sell_day] - self[buy_day]
        if profit > best_profit
          best_buy_day, best_sell_day = buy_day, sell_day
          best_profit = self[best_sell_day] - self[best_buy_day]
        end
      end
    end
    [best_buy_day, best_sell_day]
  end
end
