module Movement
	def flying
		puts "We can fly bitch"
	end
end

class Bees
	include Movement
	attr_accessor :wings, :color
end

class Birds 
	include Movement
	attr_accessor :beaks, :species
end

class Planes
	include Movement
	attr_accessor :size, :types
end


bees = Bees.new
bees.flying
