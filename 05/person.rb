class Person
end

person_ins = Person.new
puts person_ins.class
puts person_ins.object_id


class House
	attr_accessor :paint_color
end

new_house = House.new
new_house.paint_color = "Pink"

