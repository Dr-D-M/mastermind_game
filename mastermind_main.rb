require './mastermind_board.rb'
require './mastermind_player.rb'
require './mastermind_game.rb'

class Mastermind
	def initialize
	game_start  
	game_loop
end
def hello_screen
	puts "\n\tWelcome to Master Mind Game!\t\n",
	     "\nDo you think you could beat me? Choose: \n",
	     "\n1- If you wanna be the creator of the code\n",
	     "2- If you wanna guess"
	 end
	 def selection
	 	selected = [1, 2]
	 	print "\n(1 / 2) ?\t"
	 	input = gets.chomp.to_i
	 	#manage errors in case that user types 
	 	#other key than 1 or 2
	 	loop do 
	 		break if selected.include?(input)
	 		puts "Really? Are you mentally ill? Wrong key!"
	 		input = gets.chomp.to_i
	 	end
	 		@selection = input
	 	end

	 	def game_start
	 		hello_screen
	 		selection
	 		board = Board.new
	 		code_creator = Player.new
	 		guesser = Player.new
	 		guesser.kind = 'computer' if @selection == 1
	 		code_creator.kind = 'computer' if @selection == 2
	 		
	 		Game.new(code_creator, guesser, board)
	 	end
	 	def play_more
	 		puts "Do you want to play again?"
	 		loop do 
	 			input = gets.chomp.upcase
	 			return true if input == 'Y'
	 			return false if input == 'N'
	 			puts "\nInvalid, like you. Wanna play again?"
	 		end
	 	end
	 	def game_loop
	 		game_start while play_more
	 	end
	 end
Mastermind.new
