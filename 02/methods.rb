#methods always have a name
#methods can optionally have arguments
#methods can have many arguments
def print_name_and_town(name,hometown)
	puts "#{name} is from #{hometown}"
end

def user_input 
	puts "What is your name?"
	name = gets.chomp

	puts "What is your hometown"
	hometown = gets

	print_name_and_town(name, hometown)
end

user_input



