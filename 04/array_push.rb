names = ["Robert","Lauren",'Scutters']

# names.each do |name|
# 	put name.upcase 
# end


# names.push 'Cortana' 

# names.each do |name|
# 	puts name.upcase 
# end

count = 0 
while count < 100
	names << "Name #{count}" #<< Does same as .push
	count += 1
end


names.each do |name|
	puts name.upcase
end