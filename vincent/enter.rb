require_relative 'cipher'

puts "Would you like to encrypt or decrypt your messages: Yes or No"
answer = gets.chomp

 if answer == "Yes"
 	puts "What would you like to encode?"
 	encryptedmessage = gets.chomp
 	cipher = cipher.new
 	puts cipher.encryptedmessage(new_answer)
 else 
 	puts "you have not encrypted your message"
 end




