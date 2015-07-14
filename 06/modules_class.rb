module Movement
	def flying
		puts "We can fly bitch"
	end

	def brand 
		puts self.the_brand
	end
end


class BaseThing
	attr_accessor :the_brand
	include Movement

	def initialize(brand)
		self.the_brand = brand
	end
end



class Bees < BaseThing
	attr_accessor :wings, :color
end

class Birds < BaseThing
	attr_accessor :beaks, :species
end

class Planes < BaseThing
	attr_accessor :size, :types
end


bees = Bees.new("Toyota")
bees.brand
