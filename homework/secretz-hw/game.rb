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
		number = rand(1..20)
		puts "I'm thinking of a number between 1 and 20, try and guess what it is"
		puts "Psst.... its #{number}"
		guess = gets.to_i
		attempts = 1

		until guess == number do
		  if guess < number then puts "Too small, try again"
		  elsif guess > number then puts "Too big, try again"
		  end
		  guess = gets.to_i
		  attempts += 1
			puts "You got it!"
			puts "You've guessed #{guess} times"
			guess = gets.chomp
		end
	end
end
