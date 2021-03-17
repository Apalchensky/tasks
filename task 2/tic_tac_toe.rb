get_game_board = [
['0','X','0'],
['X','0',''],
['0','X','X']
]

puts get_game_board.to_s

count = 0

gorisontal_1 = []

gorisontal_2 = []

gorisontal_3 = []

diagonal_1 = []

diagonal_2 = []


	for item in get_game_board do
		
		if item.uniq == ["X"]
		
			puts "X"

		elsif item.uniq == ["0"]

			puts "0"
	
		end

				gorisontal_1 << item[0]

				gorisontal_2 << item[1]

				gorisontal_3 << item[2]

				diagonal_1 << item[count]

				diagonal_2 << item[-(count+1)]

				count += 1

	end

		if gorisontal_1.uniq == ["0"]

			puts "0"

		elsif gorisontal_1.uniq == ["X"]

			puts "X"

		elsif gorisontal_2.uniq == ["0"]
		
			puts "0"

		elsif gorisontal_2.uniq == ["X"]
			
			puts "X"
		
		elsif gorisontal_3.uniq == ["0"]
		
			puts "0"
			
		elsif gorisontal_3.uniq == ["X"]
			
			puts "X"

		elsif diagonal_1.uniq == ["X"]  

			puts "X"				
				
		elsif diagonal_1.uniq == ["0"]  

			puts "0"
			
		elsif diagonal_2.uniq == ["X"]  

			puts "X"				
				
		elsif diagonal_2.uniq == ["0"]  

			puts "0"

		else
		
			puts "\'\'"			
		end	













