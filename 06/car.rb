class Car
	attr_accessor :horsepower, :make, :model, :color, :type
end

class Manual < Car 
	attr_accessor :gears, :clutch_stiffness
end

newcar = Manual.new
newcar.horsepower = "1000hp"
newcar.make = "Chevy"
newcar.model = "Impala"
newcar.color = "Candy-Apple Red"
newcar.type = "Convertabile"
newcar.gears = 6

puts newcar.gears