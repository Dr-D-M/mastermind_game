class Board
	attr_reader :chosen_colors
	def initialize
		@chosen_colors = Array.new(4, 'no_color')
	end
	def instructions
		puts "\nREAD AND PLAY!\n"
		puts "\n* This game consist in four colors\n"
		puts "\n* If you are the creator you must select 4 colors\n"
		puts "\n* if you are the guesser you have to guess 4 colors each turn\n"
		puts "\n* Choose 4 numbers from the list and click enter each time you select the color\n"
		puts "\n1: red, 2: green, 3:blue, 4: yellow, 5: brown, 6: orange, 7:black, 8:white\n"
	end
def display_board
	puts "\npicked colors are: \t #{chosen_colors.join(' ')}\n"
end

def place_color(color, position)
	@chosen_colors[position] = color
	end 
end

