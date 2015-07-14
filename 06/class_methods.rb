class RandomNameGenerator
	def self.random_name
		['Robert', 'Vincent' , 'Fido', 'Lauren'].sample(3)
	end
end


puts RandomNameGenerator.random_name
