# 1.upto(100) do |times|
# 	puts "Loop #{times}"
# end

# # Counts to 100 and in multiples of 3 prints fizz
# 1.upto(100) do |times|
#     if times%3 == 0 
#       puts "fizz"
#     else
#       puts "#{times}"
#     end
# end

# # Counts to 100 and in multiples of 5 prints buzz
# 1.upto(100) do |times|
#     if times%5 == 0 
#       puts "buzz"
#     else
#       puts "#{times}"
#     end
# end

# Counts to 100 and in multiples of 5 prints buzz
# 1.upto(100) do |times|
#     if times % 5 == 0
#       puts "buzz"
#     else
#       puts "#{times}"
#     end
# end

count = 1
while count <= 100
	if count % 3 == 0 && count % 5 == 0
		puts "Fizzbuzz"
	elsif count % 3 == 0
		puts "Fizz" 
	elsif count % 5 == 0 
		puts "Buzz"
	else
		puts count
	end
	count += 1
end


# #Counts to 100 and in multiples of 3 and 5 prints fizzbuzz
# 1.upto(100) do |times|
#     if times % 3 == 0 || times % 5 == 0
#       puts "Fizzbuzz"
#     else
#       puts "#{times}"
#     end
# end