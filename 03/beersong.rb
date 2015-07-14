
# my example
99.downto(2) do |bottles|
	puts "#{bottles} bottles of beer on the wall"
	puts "You take one down and pass it around"
	puts "#{bottles} bottles of beer on the wall"

	if bottles == 2
		puts "1 bottle of beer on the wall"
		puts "You take one down and pass it around."
		puts "No more bottles of beer on the wall. :("
	end
end

# Bobbys 
count = 99 
singular = "bottles"
plural = "bottles"

while count > 0 
	if count > 1
		bottle = plural
	else 
		bottle = singular
	end
	bottle = plural
	puts "#{count} #{bottles} of beer on the wall"
	puts "#{count} #{bottles} of beer!"

	count -=1
end

puts "no more bottles of beer"
