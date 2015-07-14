count = 0
loop do 
	puts count
	if count >= 5000
		break
	end
	count += 1
	# Increment by re-assigning var
	#count = count + 1
end

#Loops
#Upto 
1.upto(3) do |times|
	puts "test"
end

#DownTo
3.downto(1) do |guess|
	puts "You have #{guess} guesses left"
end

#Conditional Loops 
count = 10
while count > 0 
	puts "Looping"
	count -=1
end

count = 10 
loop do 
	break if count < 1
	put "Looping"
	count -= 1 
end