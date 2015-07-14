require_relative 'cipher'

puts "Hello, welcome to Encode/Decode! If you'd like to Encode, type E, if you'd like to Decode, type D."

answer = gets.chomp.downcase

if answer == "e"
    puts "You'd like to Encode. Please type what you wish to encode."
    new_answer = gets.chomp
    cipher = Cipher.new
    puts cipher.encode(new_answer)

elsif answer == "d"
    puts "You'd like to Decode. Please type what you wish to decode."
    new_answer = gets.chomp
    cipher = Cipher.new
    puts cipher.decode(new_answer)
else
    puts "Please type either E or D"
end



a = [ "a", "b", "c", "d" ]

a.rotate!             
a.rotate!(2)     
a.rotate!(-3)