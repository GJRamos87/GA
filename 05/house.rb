# Create a class called "House"
class House
	# Give the house possible attributes
	attr_accessor :paint_color
	attr_accessor :bedrooms, :price

	def display_info
		puts "Paint Color #{self.paint_color}"
		puts "# Of bedrooms #{self.bedrooms}"
		puts "Price #{self.price}"
	end
end

my_house = House.new
my_house.paint_color = "Sepia"
my_house.bedrooms = 12
my_house.price = 100

my_house.display_info

bobs_house = House.new
bobs_house.paint_color = "Blue"
bobs_house.display_info
