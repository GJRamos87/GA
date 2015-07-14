# 1. Create a class that represents a T.V. show. Include any relevant attributes you think a
# t.v. show has. But be sure to include the name and air dates
# 2. When instantiating a new object from this class, include the ability to pass in 2
# arguments for the name and air dates.
# 3. Create 4 instances of your class with the name and air dates.
# 4. Now add a method that displays information about the show
# 5. After that, make each of the 4 instances of the class display their info
# 6. Now, instead of creating your shows 4 individual times, move the creation into a loop of
# some type. Also display the info of the show within the loop.
# a. Hint: you can use an array to store all of the individual show names before
# instantiating your class

class TvShow
	attr_accessor :genre, :name, :air_dates, :actors

	def apartment_info 
		puts " #{self.friendly_address}. and #{self.number_of_apartments} are available "
	end
	
	def friendly_address 
		return "Great apartment on #{self.address}"
	end
	
	def initialize(x,y)
		self.name = x 
		self.air_dates = y
	end

end

tvlisting = TvShow.new('Fresh Prince','Mon-Fri')
puts tvlisting.air_dates + tvlisting.name
