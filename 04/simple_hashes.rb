# my_hash = {"Robert" => "Ross"}
# my_hash ["Toshiba"] = "Nintendo"

# puts my_hash["Robert"]
# puts my_hash["Toshiba"]

symbols_hash = { :fire => "water", 
:water => "leaf type"}

# puts symbols_hash[:fire]
# puts symbols_hash[:water]

# symbols_hash.each do |key, value|
# 	puts "The counter for #{x} is #{y}"
# end

# the_values = symbols_hash.values


animal_hash = { 
	:moose => "mooses",
	:sheep => "sheeps",
	"dog" => "dogs",
	:walrus => "walruses",
	:mouse => "mice"
}

#add the key "goose" with the value "geese"
animal_hash["goose"] = "geese"

animal_hash.each do |singular, plural|
	puts " This is singular: #{singular} | This is plural: #{plural} "
end


