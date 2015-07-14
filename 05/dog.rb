class Dog
	attr_accessor :breed
	attr_accessor :size
	attr_accessor :color 
	attr_accessor :gender
end

dogstuff = Dog.new

dogstuff.breed = "Pitbull"
dogstuff.size = "Big-Dog"
dogstuff.color = "Black"
dogstuff.gender = "Male"

puts " Yo there was a #{dogstuff.breed}:#{dogstuff.gender} who was a #{dogstuff.size} and he was #{dogstuff.color }.  "

