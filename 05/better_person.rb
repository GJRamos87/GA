class BetterPerson
	attr_accessor :eye_color
	attr_accessor :height
end

ian = BetterPerson.new

ian.eye_color = "Blue"
ian.height = "6'11"
puts ian.eye_color  + ian.height
puts "#{ian.eye_color} and #{ian.height}"

