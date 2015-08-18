require "pry"
require 'reproduction'
class Animal
	attr_accessor :species, :covering, :backbone

	def initialize(species, covering, backbone)
		self.species = species
		self.covering = covering
		self.backbone = backbone
	end

	def breed
		puts "aww yeah"
	end

	def eat
		puts "mmmm"
	end

	def self.speak
		puts "argggg"
	end

end

class Mammal < Animal
	attr_accessor :warm_blood, :four_chamber_heart

	def initialize(warm_blood, four_chamber_heart)

		self.warm_blood = true
		self.four_chamber_heart = true
	end

	def have_babies_inside_oneself
		puts "soooo wish we could lay eggs"
	end
end


binding.pry

