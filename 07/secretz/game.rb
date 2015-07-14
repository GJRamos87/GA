class Game 
	attr_accessor :player_name
	attr_accessor :answer
	attr_accessor :guess_count

	def initialize 
		puts 'Whats your name?'
		self.player_name = gets.chomp
		self.answer = rand(1..20)
		self.guess_count = 0
	end

	def begin_game
		puts "Hello #{self.player_name}!"
		continue
	end

	def continue

		self.guess_count += 1
		puts "What is your guess"
		puts "Psst.... its #{self.answer}"
		puts "You've guessed #{self.guess_count} times"
		guess = gets.chomp

		if guess.to_i == self.answer 
			puts "Congrats"
		else 
		if self.guess_count == 3 
			puts "Sorry, you've run out of guesses"
			return
		end
			puts "Try again"
			continue
		end
	end
end
