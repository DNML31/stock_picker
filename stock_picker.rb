def stock_picker(array)

  choices = {}
  days_best = {}
  earnings = []
  earned = "".to_i
  buy = "".to_i
  sell = "".to_i

  array.each_with_index do |element, i|

    element = "Day #{i} - #{element}"
    choices[element] = array.slice(i..array.length)
  
    choices.each do |key, value|

      earnings = (value.max - value[0])
      days_best[key] = earnings

    end
    
  end

  new = days_best.each_value do |value|
    if value > earned
      earned = value.to_i
    end
    buy = days_best.rassoc(earned)

  end
  # p buy
  # ["Day 1 - 3", 12]

  buy = 
  sell = buy[1] + buy[0]

  p earned
  p new

 # buy = the index of the element that has the largest earnings
 # sell = the index of the element that equals (largest earnings
 # + element)


  # p [buy,sell]
end


stock_picker([17,3,6,9,15,8,6,1,10])