number = rand(10) + 1
puts "I'm thinking of a number between 1 and 10, try and guess what it is"
guess = gets.to_i
attempts = 1
until guess == number do
  if guess < number then puts "Too small, try again"
  elsif guess > number then puts "Too big, try again"
  end
  guess = gets.to_i
  attempts += 1
end
puts "Well done, you guessed my number in #{attempts} attempt#{'s' if attempts > 1}!"