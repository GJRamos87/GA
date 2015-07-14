class NumberGame
	attr_accessor :secret, :attempts

	def initialize
		self.attempts = 0
		self.secret = NumberGenerator.random_number
	end
end

class NumberGenerator 
	def self.random_number()
		rand(100)
	end
end

game = NumberGame.new
puts game.attempts
puts game.secret