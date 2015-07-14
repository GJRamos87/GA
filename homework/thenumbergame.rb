#Stores name in var and passes it to welcome message 
puts "Hello there .. Wanna play a game? What is your name?"
name = gets.chomp
puts "Welcome the the number game #{name}."
puts "You have 3 chances at this. Guess a number from 1 - 10, good luck! "


#Method which loops through guess's and evaluates answer 
def number_guess 
	correct_answer = 10
	user_answer = gets.to_i
	2.downto(0) do |guess|
		if user_answer == correct_answer
			puts "You guessed correctly!"
			break
		else 
			puts "You have #{guess} guesses left"
			user_answer = gets.to_i
			if user_answer != correct_answer && guess == 1
				puts "Sorry, you did not guess correctly!"
				break
			end
			guess += 1
		end #if/else end
	end #loop end
end #end number_guess

number_guess











