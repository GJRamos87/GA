module MotorVehicle
	def turn_on
		puts "I'm on!"
	end

	def move_forward
		puts "Moving forward"
	end

	def describe 
		self.go()
	end

	def go 
		puts "I'm a #{self.class} thats going"
	end

end

class Car 
	include MotorVehicle
end

class Motorcycle 
	include MotorVehicle

	def go
		puts "I'm a Motorcycle that is going"
	end
end

car = Car.new
car.move_forward
car.describe

motorbike = Motorcycle.new
motorbike.turn_on
motorbike.describe
