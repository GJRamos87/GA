# class House 
# 	attr_accessor :paint_color

# 	def turn_on_sprinklers
# 		puts "Sprinklers on!"
# 	end
# end

# new_house = House.new 
# new_house.turn_on_sprinklers

class House
	attr_accessor :paint_color

	def print_color
		puts "The color is: #{self.paint_color}"
	end
end
		
new_house = House.new_house
new_house.paint_color = "Pink"
new_house.print_color