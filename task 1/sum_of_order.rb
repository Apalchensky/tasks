order_items = [100.0, 112.2, 301.1]

discounts = [10.0, 15.0, 12.0]

count = 0 

over_result = 0

while count < order_items.size do	
		
	price = order_items[count]

	discount = discounts[count]

	final_price = price - (price*discount)/100

	over_result += final_price

	count += 1

end

puts "Order Items: #{order_items.to_s}"

puts "Discounts: #{discounts.to_s}"

puts "Total sum: #{over_result.to_s}"