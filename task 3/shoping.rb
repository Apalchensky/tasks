coins = 50

lubeck = {

20 => "salt", 
50 => "fish",
60 => "cloth",
36 => "copper",
96 => "furs"

}

reval = {

35 => "salt", 
50 => "fish",
40 => "cloth",
60 => "copper",
45 => "furs"

}

bergen = {


62 => "salt", 
15 => "fish",
18 => "cloth",
82 => "copper",
54 => "furs"

}

print_lubeck = lubeck.map{ | key, value | "#{value} - #{key} coins" }


print_reval = reval.map{ | key, value | "#{value} - #{key} coins" }


print_bergen = bergen.map{ | key, value | "#{value} - #{key} coins" }


puts "Initial coins: #{coins}"


puts "TOWN 1 - Lubeck\nGood prices:"

	for item in print_lubeck do

		puts item.to_s

	end

puts "TOWN 2 - Reval\nGood prices:"

for item in print_reval do

		puts item.to_s

	end

puts "TOWN 2 -  Bergen\nGood prices:"

	for item in print_bergen do

		puts item.to_s

	end

puts "\n Which town will you visit first ?"

town = gets.chomp.downcase

if town == "lubeck"

	good = lubeck[lubeck.keys.min]

	price = lubeck.keys.min

	puts "Buy #{good} for #{price} coins in Lubeck. #{coins - price} coins left."

		

		if  bergen.invert[good] < reval.invert[good]		

			puts "Sell #{good} for #{reval.invert[good]} coins in Reval." +

			" #{coins - price + reval.invert[good]} coins left."	

			puts "Buy #{reval[reval.keys.min]} for #{reval.keys.min} in Reval. #{coins - price + reval.invert[good] - reval.keys.min} coins left."	

			puts "Sell #{reval[reval.keys.min]} for #{bergen.invert[reval[reval.keys.min]]} coins in Bergen." +

			" #{coins - price + reval.invert[good] - reval.keys.min + bergen.invert[reval[reval.keys.min]]} coins left."	

		else

			puts "Sell #{good} for #{bergen.invert[good]} coins in Bergen." +

			" #{coins - price + bergen.invert[good]} coins left."

			puts "Buy #{bergen[bergen.keys.min]} for #{bergen.keys.min} in Bergen." + 

			" #{coins - price + bergen.invert[good] - bergen.keys.min} coins left."

			puts "Sell #{bergen[bergen.keys.min]} for #{reval.invert[bergen[bergen.keys.min]]} coins in Reval." +

			" #{coins - price + bergen.invert[good] - bergen.keys.min + reval.invert[bergen[bergen.keys.min]]} coins left."	

		end	

elsif town == "bergen"

	good = bergen[bergen.keys.min]

	price = bergen.keys.min

	puts "Buy #{good} for #{price} coins in Bergen. #{coins - price} coins left."

		if  lubeck.invert[good] < reval.invert[good]		

			puts "Sell #{good} for #{reval.invert[good]} coins in Reval." +

			" #{coins - price + reval.invert[good]} coins left."

			puts "Buy #{reval[reval.keys.min]} for #{reval.keys.min} in Reval. #{coins - price + reval.invert[good] -reval.keys.min} coins left."	

			puts "Sell #{reval[reval.keys.min]} for #{lubeck.invert[reval[reval.keys.min]]} coins in Lubeck." +

			" #{coins - price + reval.invert[good] - reval.keys.min + lubeck.invert[reval[reval.keys.min]]} coins left."
	
		else

			puts "Sell #{good} for #{lubeck.invert[good]} coins in Lubeck." +

			" #{coins - price + lubeck.invert[good]} coins left."

			puts "Buy #{lubeck[lubeck.keys.min]} for #{lubeck.keys.min} in lubeck." + 

			" #{coins - price + lubeck.invert[good] - lubeck.keys.min} coins left."

			puts "Sell #{lubeck[lubeck.keys.min]} for #{reval.invert[lubeck[lubeck.keys.min]]} coins in Reval." +

			" #{coins - price + lubeck.invert[good] - lubeck.keys.min + reval.invert[lubeck[lubeck.keys.min]]} coins left."
		end	
	

else

	good = reval[reval.keys.min]

	price = reval.keys.min

	puts "Buy #{good} for #{price} coins in Reval. #{coins - price} coins left."

		if  lubeck.invert[good] < bergen.invert[good]		

			puts "Sell #{good} for #{bergen.invert[good]} coins in Bergen." +

			" #{coins - price + bergen.invert[good]} coins left."

			puts "Buy #{bergen[bergen.keys.min]} for #{bergen.keys.min} in Bergen. #{coins - price + bergen.invert[good] - bergen.keys.min} coins left."	

			puts "Sell #{bergen[bergen.keys.min]} for #{lubeck.invert[bergen[bergen.keys.min]]} coins in Reval." +

			" #{coins - price + bergen.invert[good] - bergen.keys.min + reval.invert[bergen[bergen.keys.min]]} coins left."	

		else	

			puts "Sell #{good} for #{lubeck.invert[good]} coins in Lubeck." +

			" #{coins - price + lubeck.invert[good]} coins left."

			puts "Buy #{lubeck[lubeck.keys.min]} for #{lubeck.keys.min} in Lubeck." + 

			" #{coins - price + lubeck.invert[good] - lubeck[lubeck.keys.min]} coins left."

			puts "Sell #{lubeck[lubeck.keys.min]} for #{bergen.invert[lubeck[lubeck.keys.min]]} coins in Bergen." +

			" #{coins - price + lubeck.invert[good] - lubeck.keys.min + bergen.invert[lubeck[lubeck.keys.min]]} coins left."	


 		
		end
	
end
