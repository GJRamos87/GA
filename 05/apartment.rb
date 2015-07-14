class Apartment
	attr_accessor :address, :number_of_apartments

	def apartment_info 
		puts " #{self.friendly_address}. and #{self.number_of_apartments} are available "
	end
	
	def friendly_address 
		return "Great apartment on #{self.address}"
	end

	def initialize(x,y)
		self.address = x 
		self.number_of_apartments = y
	end

end

# apartment_listing = Apartment.new
# apartment_listing.address = "10th and 21st St, NY"
# apartment_listing.number_of_apartments = 4

# apartment_listing.apartment_info

apartment_listing2 = Apartment.new("6th St", 3)
puts apartment_listing2.address