puts "Enter your password:"
password = gets.chomp
expected = "dave"

if password == expected 
	puts "Welcome Dave"
else 
	puts "You messed up"
end