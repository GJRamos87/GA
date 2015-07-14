class Person 
	attr_accessor :first_name, :last_name, :birthday

	def initialize(first, last, bday)
		self.first_name = first
		self.last_name = last
		self.birthday = bday
	end
end

# the_person = Person.new
# the_person.first_name = "Mer"
# the_person.last_name = "Haaaa"
# the_person.birthday = "July 4th 2015"

# puts the_person.first_name + " " + the_person.last_name + " " +the_person.birthday;

humans = Person.new("George","Ramos","01/01/87")
puts humans.first_name + humans.last_name + humans.birthday

